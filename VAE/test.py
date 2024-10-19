import sys
import os

import torch
import torch.nn as nn
import numpy as np
import torch.nn.functional as F
import torch.optim as optim
import matplotlib.pyplot as plt

from torchvision import datasets, transforms

sys.path.append('../')
from partituras import atxt as atxt
from torch.utils.data import Dataset, DataLoader
sys.path.append('../')
from partituras import atxt as atxt
from partituras import ash as ash
import model as m

# Data Loading
input_data = atxt.torch_data

# Configuration
# DEVICE = torch.device("cuda" if torch.cuda.is_available() else "cpu")
DEVICE = "cpu"
INPUT_DIM = 2146
H_DIM = 400
Z_DIM = 80
NUM_EPOCHS = 4000
BATCH_SIZE = 9
LR_RATE = 3e-4 # Karpathy constant = 3e-4

# Peso reconstruction loss
ALPHA = 1

# Peso kl_div
BETA = 0.2

class CustomDataset(Dataset):
    def __init__(self, data):
        self.data = data

    def __len__(self):
        return len(self.data)

    def __getitem__(self, idx):
        # Asegúrate de que el formato sea adecuado para el modelo
        matrix = self.data[idx].reshape(-1)  # Aplanar a un vector de 2109 elementos
        return torch.tensor(matrix, dtype=torch.float32)

# Generar una muestra aleatoria del espacio latente Z_DIM
z = torch.randn(1, Z_DIM).to(DEVICE)

model = m.VariationalAutoEncoder(input_dim=INPUT_DIM)
model.load_state_dict(torch.load('vae.pth'))
model.eval()

# Pasar la muestra por el decoder para obtener la reconstrucción
with torch.no_grad():
    reconstructed_matrix = model.decode(z)

# Si el output tiene valores en rango [0, 1], lo conviertes a binario (0 o 1)
# Dependiendo del uso de tu VAE, la salida puede necesitar una activación, como sigmoid.
binary_output = (reconstructed_matrix > 0.5).float()

# Si el tamaño de la salida es un vector, darle forma a una matriz 37x58
output_matrix = binary_output.view(37, 58).cpu().numpy()

# Visualizar la matriz como imagen

lilypond = ash.matrix_to_lilypond(output_matrix)
print(lilypond)

# plt.imshow(output_matrix, cmap='gray')
# plt.title("Output del Decoder (Partitura)")
# plt.show()
