import torch
import sys
import os

import torch.nn as nn
import numpy as np
import torch.nn.functional as F
import torch.optim as optim
from torchvision import datasets, transforms
sys.path.append('../')
from partituras import atxt as atxt
from torch.utils.data import Dataset, DataLoader


# class Encoder(nn.Module):
#     def __init__(self, input_dim, hidden_dim, latent_dim):
#         super(Encoder, self).__init__()
#         self.conv1 = nn.Conv2d(input_dim, hidden_dim, kernel_size=3, stride=2, padding=1)
#         self.conv2 = nn.Conv2d(hidden_dim, latent_dim, kernel_size=3, stride=2, padding=1)

#     def forward(self, x):
#         print(f"Entrada a enc_conv1: {x.shape}")
#         x = F.relu(self.conv1(x))
#         print(f"Salida de enc_conv1: {x.shape}")
#         x = self.conv2(x)
#         print(f"Salida de enc_conv2: {x.shape}")
#         return x

# class BinaryEncoder(nn.Module):
#     def __init__(self, input_dim=1, hidden_dim=16, latent_dim=32):
#         super(BinaryEncoder, self).__init__()
#         # Capa convolucional con 16 filtros
#         self.conv1 = nn.Conv2d(input_dim, hidden_dim, kernel_size=3, stride=2, padding=1)
#         # Capa convolucional con 32 filtros para el espacio latente
#         self.conv2 = nn.Conv2d(hidden_dim, latent_dim, kernel_size=3, stride=2, padding=1)

#     def forward(self, x):
#         print(f"Entrada a enc_conv1: {x.shape}")
#         x = F.relu(self.conv1(x))  # Activación ReLU
#         print(f"Salida de enc_conv1: {x.shape}")
#         x = F.relu(self.conv2(x))
#         print(f"Salida de enc_conv2: {x.shape}")
#         return x

# class Decoder(nn.Module):
#     def __init__(self, latent_dim, hidden_dim, output_dim):
#         super(Decoder, self).__init__()
#         self.conv1 = nn.ConvTranspose2d(latent_dim, hidden_dim, kernel_size=3, stride=2, padding=1)
#         self.conv2 = nn.ConvTranspose2d(hidden_dim, output_dim, kernel_size=3, stride=2, padding=1)

#     def forward(self, x):
#         print(f"Entrada a dec_conv1: {x.shape}")
#         x = F.relu(self.conv1(x))
#         print(f"Salida de dec_conv1: {x.shape}")
#         x = torch.sigmoid(self.conv2(x))
#         print(f"Salida de dec_conv2: {x.shape}")
#         return x
    
# # Datos de entrada: batch de matrices binarias de 28x28
# batch_size = 32


# encoder = BinaryEncoder(input_dim=1, hidden_dim=16, latent_dim=32)
# latent_space = encoder(input_data)


# decoder = Decoder(latent_dim=32, hidden_dim=16, output_dim=1)
# reconst_output = decoder(latent_space)

# print(reconst_output.shape)

# binary_output = torch.round(reconst_output)
# reconstructed = binary_output.detach().numpy()

# np.set_printoptions(threshold=np.inf)
# print(reconstructed)

### AQUI TERMINA 1 ###

class Autoencoder(nn.Module):
    def __init__(self):
        super().__init__()
        self.encoder = nn.Sequential(
            nn.Linear(37*58, 256),
            nn.ReLU(),
            nn.Linear(256, 128),
            nn.ReLU(),
            nn.Linear(128, 64),
            nn.ReLU(),
            nn.Linear(64, 12),
            nn.ReLU(),
            nn.Linear(12, 3)
        )
        self.decoder = nn.Sequential(
            nn.Linear(3, 12),
            nn.ReLU(),
            nn.Linear(12, 64),
            nn.ReLU(),
            nn.Linear(64, 128),
            nn.ReLU(),
            nn.Linear(128, 256),
            nn.ReLU(),
            nn.Linear(256, 37*58),
            nn.Sigmoid()
        )

    def forward(self, x):
        encoded = self.encoder(x)
        decoded = self.decoder(encoded)
        return decoded