import sys

import torch
import numpy as np
import matplotlib.pyplot as plt

sys.path.append('../')
from partituras import atxt as atxt
from torch.utils.data import Dataset
sys.path.append('../')
from partituras import atxt as atxt
from partituras import ash as ash
import model as m

# Data Loading
input_data = atxt.torch_data

# Configuration
CANTIDAD_TESTS = 10

# DEVICE = torch.device("cuda" if torch.cuda.is_available() else "cpu")
DEVICE = "cpu"
INPUT_DIM = 3922
H_DIM = 800
Z_DIM = 2
NUM_EPOCHS = 4000
BATCH_SIZE = 114
LR_RATE = 3e-4 # Karpathy constant = 3e-4

# Peso reconstruction loss
ALPHA = 1

# Peso kl_div
BETA = 0.1

class CustomDataset(Dataset):
    def __init__(self, data):
        self.data = data

    def __len__(self):
        return len(self.data)

    def __getitem__(self, idx):
        matrix = self.data[idx].reshape(-1) # aplanar
        return torch.tensor(matrix, dtype=torch.float32)

# Generar una muestra aleatoria del espacio latente Z_DIM

model = m.VariationalAutoEncoder(input_dim=INPUT_DIM)
model.load_state_dict(torch.load('vae.pth'))
model.eval()

for i in range(CANTIDAD_TESTS):

    z = torch.randn(1, Z_DIM).to(DEVICE)
    print('vector z: ', z)
    with torch.no_grad():
        reconstructed_matrix = model.decode(z)

    print('shape: ', reconstructed_matrix.shape)
    reconstructed_37by106 = reconstructed_matrix.view(37, 106)

    # Crear una matriz de ceros del mismo tamaño que la salida
    binary_output = torch.zeros_like(reconstructed_37by106)

    # Encontrar el índice del valor máximo de cada fila
    max_indices = torch.argmax(reconstructed_37by106, dim=1)

    # Usar los índices para asignar 1 en el valor máximo de cada fila
    binary_output[torch.arange(reconstructed_37by106.size(0)), max_indices] = 1

    # Si el tamaño de la salida es un vector, darle forma a una matriz 37x106
    output_matrix = binary_output.view(37, 106).cpu().numpy()

    # Visualizar la matriz como imagen

    lilypond_output = ash.matrix_to_lilypond(output_matrix)
    print(lilypond_output)

    with open(f'partitura{i}.ly', 'w') as f:
        f.write(lilypond_output)

    plt.imshow(output_matrix, cmap='gray')
    plt.title("Output del Decoder (Partitura)")
    plt.show()
