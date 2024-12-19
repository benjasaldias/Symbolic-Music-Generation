import os
import sys
import torch
import plotly.express as px
import numpy as np
import pandas as pd
from sklearn.decomposition import PCA 
from sklearn.manifold import TSNE 
from scipy.spatial.distance import euclidean
sys.path.append('../')
import utils as u
import Model.model as m
sys.path.append('../../')
from dataset import matrix2lilypond

GRID_SIZE = u.GRID_SIZE  # Tamaño de la cuadrícula
Z_DIM = u.Z_DIM  # Dimensión del espacio latente

DEVICE = "cpu"

with open('interpolation_2d.ly', 'w') as f:
    f.write(f'')

# Get vae.pth path to load the trained model
root_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
vae_path = os.path.join(root_dir, "Model", "vae.pth")

# Linear interpolation function
def linear_interpolation(z1, z2, steps):
    if steps < 2:
        raise ValueError("Number of steps must be at least 2.")

    # Generate interpolation weights
    t_values = torch.linspace(0, 1, steps).to(z1.device)
    
    # Calculate interpolated vectors
    interpolated_vectors = [(1 - t) * z1 + t * z2 for t in t_values]
    
    # Stack into a single tensor
    return torch.stack(interpolated_vectors)

def lerp(z1, z2, t):
    """Linear interpolation between two vectors."""
    return (1 - t) * z1 + t * z2

# Función para realizar la interpolación Slerp
def slerp(z1, z2, t):
    """Interpolación esférica (Slerp) entre dos vectores."""
    z1 = z1.squeeze()  # Ensure z1 is 1D
    z2 = z2.squeeze()  # Ensure z2 is 1D
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
def interpolate_2d(z1, z2, z3, z4, grid_size=GRID_SIZE):
    grid = []
    row = []
    z_top = linear_interpolation(z1, z2, grid_size)  # Interpolar entre z1 y z2
    z_bottom = linear_interpolation(z3, z4, grid_size)  # Interpolar entre z3 y z4
    # z_top = z_top.view(1, u.Z_DIM).to(DEVICE)
    for i in range(GRID_SIZE):
        z_point = linear_interpolation(z_top[i], z_bottom[i], GRID_SIZE)  # Interpolar entre los resultados
        row.append(z_point)
        # print(f'row: {row}')
    grid.append(torch.stack(row))
    print(grid[0].shape)
    return torch.stack(grid)

# Cargar el modelo
model = m.VariationalAutoEncoder(input_dim=3922)
model.load_state_dict(torch.load(vae_path))
model.eval()

# Solicitar puntos al usuario
def get_latent_vector_input(z1):
    if z1 == 'random' or z1 == '':
        z1 = torch.randn(1, u.Z_DIM).to(DEVICE) # Normal Distribution
    else:
        z1 = z1.split(' ')
        z1 = torch.tensor([float(x) for x in z1]).to(DEVICE)
    return z1

z1 = get_latent_vector_input(input(f"Ingresa un vector (z1) en formato x1 x2 ... (máx. {u.Z_DIM} valores): "))
z2 = get_latent_vector_input(input("Ingresa otro vector (z2): "))
z3 = get_latent_vector_input(input("Ingresa un tercer vector (z3): "))
z4 = get_latent_vector_input(input("Ingresa el cuarto vector (z4): "))

# Obtener la cuadrícula de vectores interpolados
# Main Code
transition_vectors = interpolate_2d(z1, z2, z3, z4, grid_size=GRID_SIZE)

latent_points = []
partituras = []

latent_points = []
partituras = []

print(f'transition vectors shape: {transition_vectors.shape}')
for i in range(GRID_SIZE):
    for j in range(GRID_SIZE):
        z = transition_vectors[0, i, j]
        for vector in z:
            with torch.no_grad():
                reconstructed_matrix = model.decode(vector)

            # Cambiar la forma a (37, 106)
            reconstructed_matrix = reconstructed_matrix.view(37, 106)

            # Crear una matriz de ceros del mismo tamaño
            binary_output = torch.zeros_like(reconstructed_matrix)

            # Obtener el índice del valor máximo en cada fila
            max_indices = torch.argmax(reconstructed_matrix, dim=1)

            # Usar los índices para colocar 1 en el valor máximo de cada fila
            binary_output[torch.arange(reconstructed_matrix.size(0)), max_indices] = 1

            output_matrix = binary_output.view(37, 106).cpu().numpy()

            lilypond_output = matrix2lilypond.matrix_to_lilypond(output_matrix)
            
            # Save score to file
            with open('interpolation_2d.ly', 'a') as f:
                f.write(f'\n% Partitura {i}_{j}\n')
                f.write(lilypond_output)

            # Store latent points for visualization
            latent_points.append(z.cpu().numpy().flatten())
            partituras.append(f'Partitura {i}_{j}')

# Debugging: Check if latent points are collected
if not latent_points:
    raise ValueError("No latent points were collected. Check model output and validation logic.")

# Convert latent points to NumPy array
latent_points = np.array(latent_points)

# Debugging: Check shape of latent points
print(f"Latent points shape: {latent_points.shape}")

# Perform dimensionality reduction
def reduce_dimensions(data, method="tsne"):
    if method == "pca":
        reducer = PCA(n_components=2)
    elif method == "tsne":
        reducer = TSNE(n_components=2, random_state=42)
    else:
        raise ValueError("Invalid method. Choose 'pca' or 'tsne'.")
    return reducer.fit_transform(data)

# Choose method: "pca" or "tsne"
reduced_latent_points = reduce_dimensions(latent_points, method="pca")

# Create a DataFrame for visualization
df = pd.DataFrame(reduced_latent_points, columns=['Dim1', 'Dim2'])
df['partitura'] = partituras

# Visualize using Plotly
fig = px.scatter(
    df,
    x='Dim1',
    y='Dim2',
    text='partitura',
    title='Latent Space Visualization',
    labels={'Dim1': 'Dimension 1', 'Dim2': 'Dimension 2'}
)
fig.update_traces(textposition='top center')
fig.update_layout(hovermode='closest')
fig.show()
