import torch
import numpy as np
import pandas as pd
import plotly.express as px
import model as m
import utils as u
import sys

sys.path.append('../')
from partituras import ash

GRID_SIZE = 5  # Tamaño de la cuadrícula
Z_DIM = u.Z_DIM  # Dimensión del espacio latente

DEVICE = "cpu"

# Función para realizar la interpolación Slerp
def slerp(z1, z2, t):
    """Interpolación esférica (Slerp) entre dos vectores."""
    z1 = z1 / z1.norm()
    z2 = z2 / z2.norm()
    
    dot_product = torch.dot(z1, z2)
    dot_product = torch.clamp(dot_product, -1.0, 1.0)
    
    theta = torch.acos(dot_product)
    sin_theta = torch.sin(theta)

    if sin_theta < 1e-6:
        return (1 - t) * z1 + t * z2  # Interpolación lineal como fallback

    a = torch.sin((1 - t) * theta) / sin_theta
    b = torch.sin(t * theta) / sin_theta
    
    return a * z1 + b * z2

# Función para crear una cuadrícula de vectores interpolados
def interpolate_2d(z1, z2, z3, z4, grid_size=10):
    grid = []
    for i in range(grid_size):
        alpha_vert = i / (grid_size - 1)
        row = []
        for j in range(grid_size):
            alpha_horiz = j / (grid_size - 1)
            z_top = slerp(z1, z2, alpha_horiz)  # Interpolar entre z1 y z2
            z_bottom = slerp(z3, z4, alpha_horiz)  # Interpolar entre z3 y z4
            z_point = slerp(z_top, z_bottom, alpha_vert)  # Interpolar entre los resultados
            row.append(z_point)
        grid.append(torch.stack(row))
    
    return torch.stack(grid)

# Cargar el modelo
model = m.VariationalAutoEncoder(input_dim=3922)
model.load_state_dict(torch.load('vae.pth'))
model.eval()

# Solicitar puntos al usuario
def get_latent_vector_input(prompt):
    while True:
        try:
            input_str = input(prompt)
            vec = [float(val) for val in input_str.split()]
            if len(vec) > Z_DIM:
                raise ValueError(f"Por favor, ingresa un máximo de {Z_DIM} valores.")
            # Rellenar con ceros si es necesario
            return torch.tensor(vec + [0] * (Z_DIM - len(vec)), device=DEVICE)
        except ValueError as e:
            print(f"Entrada inválida: {e}. Intenta de nuevo.")

z1 = get_latent_vector_input("Ingresa un vector (z1) en formato x1 x2 ... (máx. 12 valores): ")
z2 = get_latent_vector_input("Ingresa otro vector (z2): ")
z3 = get_latent_vector_input("Ingresa un tercer vector (z3): ")
z4 = get_latent_vector_input("Ingresa el cuarto vector (z4): ")

# Obtener la cuadrícula de vectores interpolados
transition_vectors = interpolate_2d(z1, z2, z3, z4, grid_size=GRID_SIZE)

# Generar las partituras y visualizar
latent_points = []
partituras = []

# Generar partituras para cada punto en la cuadrícula
for i in range(GRID_SIZE):
    for j in range(GRID_SIZE):
        z = transition_vectors[i, j].unsqueeze(0)  # Agregar dimensión batch
        with torch.no_grad():
            reconstructed_matrix = model.decode(z)

        # Convertir a binario
        binary_output = (reconstructed_matrix > 0.5).float()

        # Calcular dimensiones para reshape
        output_size = reconstructed_matrix.size(1)
        possible_rows = 37
        possible_cols = output_size // possible_rows

        if output_size % possible_rows == 0:
            output_matrix = binary_output.view(possible_rows, possible_cols).cpu().numpy()
        else:
            raise ValueError(f"No se puede hacer reshape con el tamaño de salida {output_size}.")

        # Convertir la matriz a formato LilyPond
        lilypond_output = ash.matrix_to_lilypond(output_matrix)

        # Guardar la partitura en el archivo
        with open('interpolation_2d.ly', 'a') as f:
            f.write(f'\n%partitura{i}_{j}\n')
            f.write(lilypond_output)
        
        # Almacenar puntos latentes
        latent_points.append([z[0, 0].item(), z[0, 1].item()])  # Solo z1 y z2 para visualización
        partituras.append(f'Partitura {i}_{j}')

# Convertir los puntos latentes a un DataFrame para visualización
latent_points = np.array(latent_points)
df = pd.DataFrame(latent_points, columns=['z1', 'z2'])
df['partitura'] = partituras

# Graficar los puntos latentes en el plano 2D usando Plotly
fig = px.scatter(df, x='z1', y='z2', text='partitura', title='Espacio Latente (2D)', labels={'z1': 'z1', 'z2': 'z2'})
fig.update_traces(textposition='top center')
fig.update_layout(hovermode='closest')
fig.show()
