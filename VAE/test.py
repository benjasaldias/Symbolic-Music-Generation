import os
import sys
import torch
import numpy as np
import matplotlib.pyplot as plt

sys.path.append('../')
import utils as u
from partituras import atxt as atxt
from torch.utils.data import Dataset
from partituras import ash as ash
import model as m

# Data Loading
input_data = atxt.torch_data

# Configuration
CANTIDAD_TESTS = 10
DEVICE = "cpu"
INPUT_DIM = u.INPUT_DIM
Z_DIM = u.Z_DIM

# Crear el directorio para almacenar las partituras, si no existe
output_dir = "tests"
os.makedirs(output_dir, exist_ok=True)

class CustomDataset(Dataset):
    def __init__(self, data):
        self.data = data

    def __len__(self):
        return len(self.data)

    def __getitem__(self, idx):
        matrix = self.data[idx].reshape(-1)  # aplanar
        return torch.tensor(matrix, dtype=torch.float32)

# Cargar el modelo
model = m.VariationalAutoEncoder(input_dim=INPUT_DIM)
model.load_state_dict(torch.load('vae.pth'))
model.eval()

for i in range(CANTIDAD_TESTS):
    z = torch.randn(1, Z_DIM).to(DEVICE)
    print('vector z:', z)

    with torch.no_grad():
        reconstructed_matrix = model.decode(z)

    # Convertir la salida a formato binario
    binary_output = (reconstructed_matrix > 0.5).float()
    output_matrix = binary_output.view(37, 106).cpu().numpy()

    # Convertir la matriz binaria a formato LilyPond
    lilypond_output = ash.matrix_to_lilypond(output_matrix)

    # Guardar el archivo en el directorio especificado
    file_path = os.path.join(output_dir, f'partitura_{i}.ly')
    with open(file_path, 'w') as f:
        f.write(lilypond_output)

    # Mostrar la matriz como imagen
    plt.imshow(output_matrix, cmap='gray')
    plt.title(f"Output del Decoder (Partitura {i})")
    plt.show()
    print(f"Partitura guardada en: {file_path}")
