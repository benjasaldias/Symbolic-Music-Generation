import sys
import os
import torch
import plotly.express as px
import numpy as np
import model as m
import pandas as pd  # Asegúrate de importar pandas
sys.path.append('../')
from partituras import atxt as atxt
from partituras import ash as ash

# Configuration
CANTIDAD_TESTS = 100  # Cambia a la cantidad de muestras deseadas
Z_DIM = 2  # Dimensionalidad del espacio latente

# DEVICE = torch.device("cuda" if torch.cuda.is_available() else "cpu")
DEVICE = "cpu"

# Cargar el modelo
model = m.VariationalAutoEncoder(input_dim=3922)  # Asegúrate de que el input_dim coincide
model.load_state_dict(torch.load('vae.pth'))
model.eval()

latent_points = []
partituras = []  # Para almacenar la información de las partituras

# Generar y almacenar los puntos latentes
for i in range(CANTIDAD_TESTS):
    # Generar un vector aleatorio en el espacio latente
    z = torch.randn(1, Z_DIM).to(DEVICE)  # Vector aleatorio de tamaño [1, Z_DIM]

    with torch.no_grad():
        reconstructed_matrix = model.decode(z)  # Usar el decoder para reconstruir la matriz

    # Si el output tiene valores en rango [0, 1], lo conviertes a binario (0 o 1)
    binary_output = (reconstructed_matrix > 0.5).float()

    # Si el tamaño de la salida es un vector, darle forma a una matriz 37x106
    output_matrix = binary_output.view(37, 106).cpu().numpy()

    lilypond_output = ash.matrix_to_lilypond(output_matrix)
    print(lilypond_output)

    with open('partituras.ly', 'a') as f:  # Cambiar 'w' por 'a' para modo de adición
        f.write(f'\n%partitura{i}')  # Agregar un salto de línea después del comentario
        f.write(lilypond_output)
    # Almacenar el punto latente y la partitura
    latent_points.append(z.cpu().numpy().flatten())  # Convertir a numpy
    partituras.append(f'Partitura {i}')  # Cambia esto por la forma que tengas de identificar las partituras

# Convertir a un array numpy para graficar
latent_points = np.array(latent_points)

# Crear un DataFrame para Plotly

df = pd.DataFrame(latent_points, columns=['z1', 'z2'])
df['partitura'] = partituras

# Graficar los puntos latentes en el plano 2D usando Plotly
fig = px.scatter(df, x='z1', y='z2', text='partitura', title='Espacio Latente (2D)', labels={'z1': 'z1', 'z2': 'z2'})
fig.update_traces(textposition='top center')
fig.update_layout(hovermode='closest')
fig.show()
