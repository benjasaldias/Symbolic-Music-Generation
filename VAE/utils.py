import torch
import numpy

### DATA ###

# training
INPUT_DIM = 3922
NUM_ROWS = 37
NOTE_RANGE = 106
NOTE_RANGE_LIST = [
        'c,', 'cis,', 'des,', 'd,', 'dis,', 'ees,', 'e,', 'eis,',
        "fes,", 'f,', 'fis,', 'ges,', 'g,', 'gis,', 'aes,', 'a,', 
        'ais,', 'bes,', 'b,', 'bis,', 'ces,',
        'c', 'cis', 'des', 'd', 'dis', 'ees', 'e', 'eis',
        "fes", 'f', 'fis', 'ges', 'g', 'gis', 'aes', 'a', 
        'ais', 'bes', 'b', 'bis', 'ces',
        "c'", "cis'", "des'", "d'", "dis'", "ees'", "e'", "eis'",
        "fes'", "f'", "fis'", "ges'", "g'", "gis'", "aes'", "a'", 
        "ais'", "bes'", "b'", "bis'", "ces'",
        "c''", "cis''", "des''", "d''", "dis''", "ees''", "e''", "eis''",
        "fes''", "f''", "fis''", "ges''", "g''", "gis''", "aes''", "a''", 
        "ais''", "bes''", "b''", "bis''", "ces''", 
        "c'''", "cis'''", "des'''", "d'''", "dis'''", "ees'''", "e'''", "eis'''",
        "fes'''", "f'''", "fis'''", "ges'''", "g'''", "gis'''", "aes'''", "a'''",
        "ais'''", "bes'''", "b'''", "bis'''", "ces'''", "c''''"
        ]
H_DIM = 800
Z_DIM = 16
BATCH_SIZE = 32
NUM_EPOCHS = 2000
LR_RATE = 3e-4
ALPHA = 1
BETA = 0.5


# interpolation
INTERPOLATION_STEPS = 10

# 2d interpolation
GRID_SIZE = 5


### GLOBAL FUNCTIONS ###
def get_binary(reconstructed, numpy=True):
    
    reconstructed = reconstructed.view(37, 106)

    # Crear una matriz de ceros del mismo tamaño
    binary_output = torch.zeros_like(reconstructed)

    # Obtener el índice del valor máximo en cada fila
    max_indices = torch.argmax(reconstructed, dim=1)

    # Usar los índices para colocar 1 en el valor máximo de cada fila
    binary_output[torch.arange(reconstructed.size(0)), max_indices] = 1

    binary_generated = binary_output

    if numpy == True:
        binary_generated = binary_output.cpu().numpy()

    return binary_generated


### INTERPOLATION FUNCTIONS ###
# SLERP interpolation function
def slerp(z1, z2, t):
    # Check magnitude 0 
    if z1.norm() == 0 or z2.norm() == 0:
        raise ValueError("Cannot SLERP over vectors of magnitude 0.")
    
    # Normalize
    z1 = z1 / z1.norm()
    z2 = z2 / z2.norm()
    
    # Calculate cosine of angle between z1 and z2
    dot_product = torch.sum(z1 * z2)
    dot_product = torch.clamp(dot_product, -1.0, 1.0)
    
    # Calculate angle
    theta = torch.acos(dot_product)
    
    # Calculate sine of angle
    sin_theta = torch.sin(theta)
    
    # If sine close to 0, use linear interpolation
    if torch.isclose(sin_theta, torch.tensor(0.0)):
        return (1 - t) * z1 + t * z2
    
    # Calculate weights for SLERP interpolation
    a = torch.sin((1 - t) * theta) / sin_theta
    b = torch.sin(t * theta) / sin_theta
    
    # Return interpolated vector
    return a * z1 + b * z2

# Linear interpolation function
def linear_interpolation(z1, z2, steps):
    if steps < 2:
        raise ValueError("Number of steps must be at least 2.")

    # Generate interpolation weights
    t_values = torch.linspace(0, 1, steps).to(z1.device)
    
    # Calculate interpolated vectors
    interpolated_vectors = [(1 - t) * z1 + t * z2 for t in t_values]
    
    # Stack into a single tensor
    return torch.stack(interpolated_vectors)

def lerp(z1, z2, t):
    """Linear interpolation between two vectors."""
    return (1 - t) * z1 + t * z2