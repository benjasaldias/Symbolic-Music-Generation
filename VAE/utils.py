import torch
import numpy
import re
import sys

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

def to_midi(filename):
    # Load and read original LilyPond file
    content = ''
    with open(f"results/{filename}.ly", "r") as file:
        lines = file.readlines()
        for line in lines:
            print(line)
            # Skip labeling (unnecesary for midi and causes RegEx errors)
            if "mark" not in line:
                content += line

    # Find all sections wanted in the file's content
    matches = re.findall(r'\\new Staff = "right" \{.*?\}', content, re.DOTALL)

    # Write the base structure of the score
    combined_content = """
    \\version "2.22.2"
    \\header {
    title = "Interpolation"
    composer = "Benjamín Saldías"
    }

    \\score {
    <<
        \\cadenzaOn
        \\override Beam.breakable = ##t

    {
    """
    diagonal_1 = combined_content
    diagonal_2 = combined_content

    scale_numbers = []
    for i in range(GRID_SIZE):
        for j in range(GRID_SIZE):
            scale_numbers.append([i, j])

    # Add each section to the score
    scale_num_1d = 0
    for i, match in enumerate(matches):
        initial_length = len(combined_content)
        
        if filename.endswith('2d'):
            combined_content += f"\n%scale {scale_numbers[i][0]}_{scale_numbers[i][1]}"
            if i != 0:
                combined_content += """
    \\mark \\markup \\bold """  + "{" f""" "Scale {scale_numbers[i][0]}_{scale_numbers[i][1]}" """ + "}"
            combined_content += (match[20:-1].strip())[1:]
        
        else:
            combined_content += f"\n%scale {scale_num_1d}"
            if i != 0:
                combined_content += """
    \\mark \\markup \\bold """  + "{" f""" "Scale {scale_num_1d}" """ + "}"
            combined_content += (match[20:-1].strip())[1:]
            scale_num_1d += 1

        combined_content += f"""    r8
    \\bar ""
    \\break
        """
        if i%6 == 0:
            diagonal_1 += combined_content[initial_length:]
        elif i%4 == 0 and i != 0:
            diagonal_2 += combined_content[initial_length:]

    # Close the Staff and Score, adding the "midi{} line"
    combined_content += """
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
    }
    \midi{ }
    
    }
    """
    diagonal_1 += """
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
    }
    \midi{ }
    
    }
    """
    diagonal_2 += """
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
    }
    \midi{ }
    
    }
    """

    # Save the new file as FILENAME.ly
    if filename.endswith('2d'):
        # Save the diagonals for 2d interpolation
        with open(f"results/2d/diagonal_1.ly", "w") as file:
            file.write(diagonal_1)

        with open(f"results/2d/diagonal_2.ly", "w") as file:
            file.write(diagonal_2)
        folder = '2d'
    else:
        folder = '1d'

    with open(f"results/{folder}/{filename}.ly", "w") as file:
        file.write(combined_content)



    print("Saved score as MIDI file correctly in the Interpolation/results folder.")