import torch # type: ignore
import sys

import torchvision.datasets as datasets # Standard Datasets
from tqdm import tqdm
from torch import nn
import model as m
from torchvision import transforms
import numpy as np
from torchvision.utils import save_image

sys.path.append('../')
from partituras import atxt as atxt
from torch.utils.data import Dataset, DataLoader

# Configuration
DEVICE = torch.device("cuda" if torch.cuda.is_available() else "cpu")
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

# Dataset Loading
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

# Lista de matirces 37x58
data_list = input_data

# Convertir a un array de NumPy
input_data = np.array(data_list)

# Crear el dataset
dataset = CustomDataset(input_data)

# Crear el DataLoader
train_loader = DataLoader(dataset=dataset, batch_size=BATCH_SIZE, shuffle=True)
model = m.VariationalAutoEncoder(INPUT_DIM, H_DIM, Z_DIM).to(DEVICE)
optimizer = torch.optim.Adam(model.parameters(), lr=LR_RATE)
loss_fn = nn.BCELoss(reduction="sum") # puede ser MSELoss o AbsoluteError Loss. Probar

scheduler = torch.optim.lr_scheduler.CyclicLR(optimizer, base_lr=3e-4, max_lr=5e-4, step_size_up=2000, mode='triangular')

# Start Training
for epoch in range(NUM_EPOCHS):
    loop = tqdm(enumerate(train_loader))
    total_loss = 0
    for i, x in loop:
        # Forward pass
        x = x.to(DEVICE).view(x.shape[0], INPUT_DIM) # try replace view with reshape
        x_reconstructed, mu, sigma = model(x)

        # Compute loss
        reconstruction_loss = loss_fn(x_reconstructed, x) # Push towards reconstruct image
        kl_div = -torch.sum(1 + torch.log(sigma.pow(2)) - mu.pow(2) - sigma.pow(2)) # Push towards standard gaussean

        # Backprop
        loss = ALPHA*reconstruction_loss + BETA*kl_div
        optimizer.zero_grad()
        loss.backward()
        optimizer.step()
        scheduler.step()
        loop.set_postfix(loss = loss.item())
    
