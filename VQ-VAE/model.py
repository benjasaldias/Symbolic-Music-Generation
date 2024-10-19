import torch
import torch.nn as nn
import torch.nn.functional as F
from partituras import atxt as atxt

import torch
import torch.nn as nn
import torch.nn.functional as F
import numpy as np

class Encoder(nn.Module):
    def __init__(self, input_dim, hidden_dim, latent_dim):
        super(Encoder, self).__init__()
        self.conv1 = nn.Conv2d(input_dim, hidden_dim, kernel_size=3, stride=2, padding=1)
        self.conv2 = nn.Conv2d(hidden_dim, latent_dim, kernel_size=3, stride=2, padding=1)

    def forward(self, x):
        print(f"Entrada a enc_conv1: {x.shape}")
        x = F.relu(self.conv1(x))
        print(f"Salida de enc_conv1: {x.shape}")
        x = self.conv2(x)
        print(f"Salida de enc_conv2: {x.shape}")
        return x

class VectorQuantizer(nn.Module):
    def __init__(self, num_embeddings, embedding_dim, commitment_cost):
        super(VectorQuantizer, self).__init__()
        self.embedding_dim = embedding_dim
        self.num_embeddings = num_embeddings
        self.commitment_cost = commitment_cost

        # Inicializamos el diccionario de códigos
        self.embedding = nn.Embedding(self.num_embeddings, self.embedding_dim)
        self.embedding.weight.data.uniform_(-1 / self.num_embeddings, 1 / self.num_embeddings)

    def forward(self, x):
        # Cambiamos la forma del tensor a [batch_size, height * width, latent_dim]
        flat_x = x.view(-1, self.embedding_dim)
        
        # Calculamos la distancia entre las entradas y los embeddings
        distances = (torch.sum(flat_x**2, dim=1, keepdim=True)
                     + torch.sum(self.embedding.weight**2, dim=1)
                     - 2 * torch.matmul(flat_x, self.embedding.weight.t()))

        # Encontramos el índice del vector más cercano
        encoding_indices = torch.argmin(distances, dim=1).unsqueeze(1)

        # Obtenemos el embedding correspondiente
        quantized = torch.index_select(self.embedding.weight, dim=0, index=encoding_indices.view(-1))

        # Reconstruimos la forma original del tensor
        quantized = quantized.view_as(x)

        # Pérdida de compromiso
        e_latent_loss = F.mse_loss(quantized.detach(), x)
        q_latent_loss = F.mse_loss(quantized, x.detach())
        loss = q_latent_loss + self.commitment_cost * e_latent_loss

        # Pasamos el gradiente a través de la cuantización
        quantized = x + (quantized - x).detach()

        return quantized, loss

class VQVAE(nn.Module):
    def __init__(self, input_dim, hidden_dim, latent_dim, num_embeddings, commitment_cost):
        super(VQVAE, self).__init__()
        self.encoder = Encoder(input_dim, hidden_dim, latent_dim)
        self.vq = VectorQuantizer(num_embeddings, latent_dim, commitment_cost)
        self.decoder = Decoder(latent_dim, hidden_dim, input_dim)

    def forward(self, x):
        z_e = self.encoder(x)
        z_q, vq_loss = self.vq(z_e)
        x_recon = self.decoder(z_q)
        recon_loss = F.mse_loss(x_recon, x)
        loss = recon_loss + vq_loss
        return x_recon, loss


class BinaryEncoder(nn.Module):
    def __init__(self, input_dim=1, hidden_dim=16, latent_dim=32):
        super(BinaryEncoder, self).__init__()
        # Capa convolucional con 16 filtros
        self.conv1 = nn.Conv2d(input_dim, hidden_dim, kernel_size=3, stride=2, padding=1)
        # Capa convolucional con 32 filtros para el espacio latente
        self.conv2 = nn.Conv2d(hidden_dim, latent_dim, kernel_size=3, stride=2, padding=1)

    def forward(self, x):
        print(f"Entrada a enc_conv1: {x.shape}")
        x = F.relu(self.conv1(x))  # Activación ReLU
        print(f"Salida de enc_conv1: {x.shape}")
        x = F.relu(self.conv2(x))
        print(f"Salida de enc_conv2: {x.shape}")
        return x

class Decoder(nn.Module):
    def __init__(self, latent_dim, hidden_dim, output_dim):
        super(Decoder, self).__init__()
        self.conv1 = nn.ConvTranspose2d(latent_dim, hidden_dim, kernel_size=3, stride=2, padding=1)
        self.conv2 = nn.ConvTranspose2d(hidden_dim, output_dim, kernel_size=3, stride=2, padding=1)

    def forward(self, x):
        print(f"Entrada a dec_conv1: {x.shape}")
        x = F.relu(self.conv1(x))
        print(f"Salida de dec_conv1: {x.shape}")
        x = torch.sigmoid(self.conv2(x))
        print(f"Salida de dec_conv2: {x.shape}")
        return x
    
# Datos de entrada: batch de matrices binarias de 28x28
batch_size = 32
input_data = atxt.torch_data

encoder = Encoder(input_dim=1, hidden_dim=16, latent_dim=32)
latent_space = encoder(input_data)


decoder = Decoder(latent_dim=32, hidden_dim=16, output_dim=1)
reconst_output = decoder(latent_space)

print(reconst_output.shape)

binary_output = torch.round(reconst_output)
reconstructed = binary_output.detach().numpy()

# print(reconstructed)