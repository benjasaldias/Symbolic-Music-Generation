import sys
import os
import torch
import plotly.express as px
import numpy as np
import model as m
import pandas as pd
from sklearn.decomposition import PCA  # Para reducir la dimensionalidad a 2D
sys.path.append('../')
from partituras import atxt as atxt
from partituras import ash as ash

# Configuration
CANTIDAD_TESTS = 500  # Cambia a la cantidad de muestras deseadas
Z_DIM = 12  # Dimensionalidad del espacio latente

DEVICE = "cpu"

with open('partituras.ly', 'w') as f:
    f.write('')

# Cargar el modelo
model = m.VariationalAutoEncoder(input_dim=3922)
model.load_state_dict(torch.load('vae.pth'))
model.eval()

latent_points = []
partituras = []

# Generar y almacenar los puntos latentes
for i in range(CANTIDAD_TESTS):
    # Generar un vector aleatorio en el espacio latente
    z = torch.randn(1, Z_DIM).to(DEVICE)

    with torch.no_grad():
        reconstructed_matrix = model.decode(z)

    binary_output = (reconstructed_matrix > 0.5).float()
    output_matrix = binary_output.view(37, 106).cpu().numpy()

    lilypond_output = ash.matrix_to_lilypond(output_matrix)
    print(lilypond_output)

    with open('partituras.ly', 'a') as f:
        f.write(f'\n%partitura{i}')
        f.write(lilypond_output)

    latent_points.append(z.cpu().numpy().flatten())
    partituras.append(f'Partitura {i}')

# Convertir a un array numpy para graficar
latent_points = np.array(latent_points)

# Reducir la dimensionalidad a 2D con PCA
pca = PCA(n_components=2)
latent_points_2d = pca.fit_transform(latent_points)

# Crear un DataFrame para Plotly
df = pd.DataFrame(latent_points_2d, columns=['z1', 'z2'])
df['partitura'] = partituras

# Graficar los puntos latentes en el plano 2D usando Plotly
fig = px.scatter(df, x='z1', y='z2', text='partitura', title='Espacio Latente (2D)', labels={'z1': 'z1', 'z2': 'z2'})
fig.update_traces(textposition='top center')
fig.update_layout(hovermode='closest')
fig.show()
