import torch # type: ignore
import sys
import os

import torch.nn as nn # type: ignore
import numpy as np
import torch.nn.functional as F
import torch.optim as optim
from torchvision import datasets, transforms
from autoencoder import Autoencoder

sys.path.append('../')
from partituras import atxt as atxt
from torch.utils.data import Dataset, DataLoader

model = Autoencoder()
criterion = nn.MSELoss()
optimizer = torch.optim.Adam(model.parameters(), lr=1e-3, weight_decay=1e-5)



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
data_loader = DataLoader(dataset, batch_size=9, shuffle=True)



# Entrenamiento
num_epochs = 100  # Ajusta según sea necesario
for epoch in range(num_epochs):
    for data in data_loader:
        # Limpiar gradientes
        optimizer.zero_grad()
        
        # Forward pass
        output = model(data)
        
        # Calcular la pérdida
        loss = criterion(output, data)  # Comparar la salida con la entrada original
        
        # Backward pass y optimización
        loss.backward()
        optimizer.step()
        
    print(f'Epoch [{epoch + 1}/{num_epochs}], Loss: {loss.item():.4f}')

torch.save(model.state_dict(), 'autoencoder.pth')