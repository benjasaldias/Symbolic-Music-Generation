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

GRID_SIZE = u.GRID_SIZE
Z_DIM = u.Z_DIM

DEVICE = "cpu"

with open('results/interpolation_2d.ly', 'w') as f:
    f.write(f'')

# Get vae.pth path to load the trained model
root_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
vae_path = os.path.join(root_dir, "Model", "vae.pth")

# Function to create a grid of interpolated vectors
def interpolate_2d(z1, z2, z3, z4, grid_size=GRID_SIZE):
    grid = []
    row = []
    z_top = u.linear_interpolation(z1, z2, grid_size)  # Interpolate between z1 and z2
    z_bottom = u.linear_interpolation(z3, z4, grid_size)  # Interpolate between z3 and z4
    for i in range(GRID_SIZE):
        z_point = u.linear_interpolation(z_top[i], z_bottom[i], GRID_SIZE)  # Interpolate between results
        row.append(z_point)
    grid.append(torch.stack(row))
    # print(grid[0].shape)
    return torch.stack(grid)

# Load the model
model = m.VariationalAutoEncoder(input_dim=u.INPUT_DIM)
model.load_state_dict(torch.load(vae_path))
model.eval()

# Request points from the user
def get_latent_vector_input(z1):
    if z1 == 'random' or z1 == '':
        z1 = torch.randn(1, u.Z_DIM).to(DEVICE) # Normal Distribution
    else:
        z1 = z1.split(' ')
        z1 = torch.tensor([float(x) for x in z1]).to(DEVICE)
    return z1

z1 = get_latent_vector_input(input(f"Enter a vector (z1) in x1 x2 ... format (max {u.Z_DIM} values): "))
z2 = get_latent_vector_input(input("Enter another vector (z2): "))
z3 = get_latent_vector_input(input("Enter a third vector (z3): "))
z4 = get_latent_vector_input(input("Enter the fourth vector (z4): "))

# Get the grid of interpolated vectors
transition_vectors = interpolate_2d(z1, z2, z3, z4, grid_size=GRID_SIZE)

latent_points = []
scales = []

# print(f'transition vectors shape: {transition_vectors.shape}')
for i in range(GRID_SIZE):
    for j in range(GRID_SIZE):
        z = transition_vectors[0, i, j]
        for vector in z:
            with torch.no_grad():
                reconstructed_matrix = model.decode(vector)

            output_matrix = u.get_binary(reconstructed_matrix)
            lilypond_output = matrix2lilypond.matrix_to_lilypond(output_matrix, [i, j])
            
            # Save score to file
            with open('results/interpolation_2d.ly', 'a') as f:
                f.write(f'\n% Score {i}_{j}\n')
                f.write(lilypond_output)

            # Store latent points for visualization
            latent_points.append(z.cpu().numpy().flatten())
            scales.append(f'Score {i}_{j}')
u.to_midi("interpolation_2d")

# Debugging: Check if latent points are collected
if not latent_points:
    raise ValueError("No latent points were collected. Check model output and validation logic.")

# Convert latent points to NumPy array
latent_points = np.array(latent_points)

# Debugging: Check shape of latent points
# print(f"Latent points shape: {latent_points.shape}")

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
df['score'] = scales

print('LilyPond file saved in the Interpolation/results folder.')

# Visualize using Plotly
fig = px.scatter(
    df,
    x='Dim1',
    y='Dim2',
    text='score',
    title='Latent Space Visualization',
    labels={'Dim1': 'Dimension 1', 'Dim2': 'Dimension 2'}
)
fig.update_traces(textposition='top center')
fig.update_layout(hovermode='closest')
fig.show()

