import torch
import numpy

### DATA ###
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

# training
ALPHA = 1
BETA = 0.5

def get_binary(reconstructed):
    # Crear una matriz de ceros del mismo tamaño
    binary_output = torch.zeros_like(reconstructed)

    # Obtener el índice del valor máximo en cada fila
    max_indices = torch.argmax(reconstructed, dim=1)

    # Usar los índices para colocar 1 en el valor máximo de cada fila
    binary_output[torch.arange(reconstructed.size(0)), max_indices] = 1

    # Convertir a formato numpy si es necesario
    binary_generated = binary_output.cpu().numpy()

    return binary_generated