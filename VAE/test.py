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
CANTIDAD_TESTS = 10

# DEVICE = torch.device("cuda" if torch.cuda.is_available() else "cpu")
DEVICE = "cpu"
INPUT_DIM = 3922
H_DIM = 800
Z_DIM = 120
NUM_EPOCHS = 4000
BATCH_SIZE = 25
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
    
    with torch.no_grad():
        reconstructed_matrix = model.decode(z)

    # Si el output tiene valores en rango [0, 1], lo conviertes a binario (0 o 1)
    binary_output = (reconstructed_matrix > 0.5).float()

    # Si el tamaño de la salida es un vector, darle forma a una matriz 37x58
    output_matrix = binary_output.view(37, 106).cpu().numpy()

    # Visualizar la matriz como imagen

    lilypond_output = ash.matrix_to_lilypond(output_matrix)
    print(lilypond_output)

    with open(f'output{i}.ly', 'w') as f:
        f.write(lilypond_output)

    plt.imshow(output_matrix, cmap='gray')
    plt.title("Output del Decoder (Partitura)")
    plt.show()
