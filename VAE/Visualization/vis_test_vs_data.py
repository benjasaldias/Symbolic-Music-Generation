import sys
import os
import torch
import plotly.express as px
import numpy as np
import VAE.Model.model as m
import pandas as pd
import utils as u
from sklearn.manifold import TSNE  # Importar t-SNE para la reducción a 2D
sys.path.append('../')
from partituras import atxt as atxt
from partituras import ash as ash

# Configuration
CANTIDAD_TESTS = 500  # Cambia a la cantidad de muestras deseadas
Z_DIM = u.Z_DIM  # Dimensionalidad del espacio latente

DEVICE = "cpu"

with open('partituras.ly', 'w') as f:
    f.write('')

# Cargar el modelo
model = m.VariationalAutoEncoder(input_dim=3922)
model.load_state_dict(torch.load('vae.pth'))
model.eval()

latent_points_generated = []
partituras_generated = []

latent_points_dataset = []
partituras_dataset = []

# Generar y almacenar los puntos latentes de las partituras generadas
input_data = atxt.torch_data  # Carga datos originales
dataset = [torch.tensor(matrix.reshape(-1), dtype=torch.float32) for matrix in input_data]

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

    latent_points_generated.append(z.cpu().numpy().flatten())
    partituras_generated.append(f'Partitura {i}')

# Obtener los vectores latentes para las partituras del dataset
for matrix in dataset:
    with torch.no_grad():
        # Asumimos que el primer valor de la tupla es el vector latente
        z, _ = model.encode(matrix.unsqueeze(0).to(DEVICE))  # Ahora desempaquetamos solo dos valores
    latent_points_dataset.append(z.cpu().numpy().flatten())
    partituras_dataset.append(f'Dataset {len(latent_points_dataset)}')

# Convertir a un array numpy para graficar
latent_points_generated = np.array(latent_points_generated)
latent_points_dataset = np.array(latent_points_dataset)

# Reducir la dimensionalidad a 2D con t-SNE
tsne = TSNE(n_components=2, perplexity=30, random_state=42)
latent_points_2d = tsne.fit_transform(np.vstack((latent_points_generated, latent_points_dataset)))

# Separar los puntos latentes generados y del dataset
latent_points_2d_generated = latent_points_2d[:len(latent_points_generated)]
latent_points_2d_dataset = latent_points_2d[len(latent_points_generated):]

# Crear un DataFrame para Plotly
df_generated = pd.DataFrame(latent_points_2d_generated, columns=['z1', 'z2'])
df_generated['partitura'] = partituras_generated
df_generated['type'] = 'Generated'

df_dataset = pd.DataFrame(latent_points_2d_dataset, columns=['z1', 'z2'])
df_dataset['partitura'] = partituras_dataset
df_dataset['type'] = 'Dataset'

# Concatenar ambos DataFrames
df = pd.concat([df_generated, df_dataset])

# Graficar los puntos latentes en el plano 2D usando Plotly
fig = px.scatter(df, x='z1', y='z2', text='partitura', color='type', title='Espacio Latente (2D)', labels={'z1': 'z1', 'z2': 'z2'})

## Seleccionar si mostrar o no nombres de puntos
# fig.update_traces(textposition='top center')
fig.update_traces(text=None, hoverinfo='text', hovertext=df['partitura'])

fig.update_layout(hovermode='closest')
fig.show()
