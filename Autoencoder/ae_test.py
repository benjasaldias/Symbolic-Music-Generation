import sys
import os

import torch
import torch.nn as nn
import numpy as np
import torch.nn.functional as F
import torch.optim as optim
from torchvision import datasets, transforms

sys.path.append('../')
from partituras import atxt as atxt
from torch.utils.data import Dataset, DataLoader
sys.path.append('../')
from partituras import atxt as atxt

from autoencoder import Autoencoder

# Data Loading
input_data = atxt.torch_data

class CustomDataset(Dataset):
    def __init__(self, data):
        self.data = data

    def __len__(self):
        return len(self.data)

    def __getitem__(self, idx):
        # Asegúrate de que el formato sea adecuado para el modelo
        matrix = self.data[idx].reshape(-1)  # Aplanar a un vector de 2109 elementos
        return torch.tensor(matrix, dtype=torch.float32)

# Lista de matirces 37x57
data_list = input_data

# Convertir a un array de NumPy
input_data = np.array(data_list)

# Crear el dataset
dataset = CustomDataset(input_data)

# Crear el DataLoader
data_loader = DataLoader(dataset, batch_size=9, shuffle=False)

model = Autoencoder()
model.load_state_dict(torch.load('autoencoder.pth'))
model.eval()

criterion = nn.MSELoss()

with torch.no_grad():
    a = 0
    total_loss = 0
    for data in data_loader:
        a += 1
        decoded = model(data)

        loss = criterion(decoded, data)
        total_loss += loss.item()

        np.set_printoptions(threshold=np.inf)
        # Convertir a NumPy para inspeccionar
        decoded_np = decoded.numpy()
        original_np = data.numpy()

        # Imprimir datos originales y decodificados para inspeccionar
        # print("Datos originales:\n", original_np)
        # print("Datos decodificados:\n", decoded_np)
        break  # Para evitar imprimir demasiados datos



    print(f'Pérdida total: {total_loss / len(data_loader)}')
