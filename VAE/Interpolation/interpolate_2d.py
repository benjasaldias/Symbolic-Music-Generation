import os
import sys
import json
import torch
import random
import plotly.express as px
import numpy as np
import pandas as pd
from sklearn.decomposition import PCA 
from sklearn.manifold import TSNE 
from scipy.spatial.distance import euclidean
from skimage.metrics import structural_similarity as ssim
sys.path.append('../')
import utils as u
import Model.model as m
sys.path.append('../../')
from dataset import matrix2lilypond

GRID_SIZE = u.GRID_SIZE
Z_DIM = u.Z_DIM

DEVICE = "cpu"

with open('results/2d/interpolation_2d.ly', 'w') as f:
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

# Get vae.pth path to load the trained model and data.json for known scales
root_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
vae_path = os.path.join(root_dir, "Model", "vae.pth")
json_path = os.path.join(root_dir, "Model", "data.json")

# Load from a JSON file
with open(json_path, "r") as json_file:
    loaded_data = json.load(json_file)
    
# Request points from the user
def get_latent_vector_input(z1):
    if z1 == 'random' or z1 == '':
        z1 = torch.randn(1, u.Z_DIM).to(DEVICE) # Normal Distribution
    elif z1 == 'known':
        random_key_z1 = random.choice(list(loaded_data.keys()))
        z1 = loaded_data[random_key_z1]
        z1 = torch.tensor(z1).view(1, Z_DIM)
    else:
        z1 = z1.split(' ')
        z1 = torch.tensor([float(x) for x in z1]).to(DEVICE)
    return z1

def write_and_evaluate(transition_vectors):
    latent_points = []
    scales = []
    # print(f'transition vectors shape: {transition_vectors.shape}')
    for i in range(GRID_SIZE):
        for j in range(GRID_SIZE):
            z = transition_vectors[0, i, j]
            # Identify the neighboring points (if they exist)
            neighbors = []
            if i > 0:  # Top neighbor
                neighbors.append(transition_vectors[0, i - 1, j])
            if i < GRID_SIZE - 1:  # Bottom neighbor
                neighbors.append(transition_vectors[0, i + 1, j])
            if j > 0:  # Left neighbor
                neighbors.append(transition_vectors[0, i, j - 1])
            if j < GRID_SIZE - 1:  # Right neighbor
                neighbors.append(transition_vectors[0, i, j + 1])

            # Calculate metrics for z1 and its neighbors
            for neighbor in neighbors:
                ssim_values = []
                lbp_values = []
                for z1_point, neighbor_point in zip(z, neighbor):
                    # Decode the points
                    with torch.no_grad():
                        reconstructed_z1 = model.decode(z1_point)
                        reconstructed_neighbor = model.decode(neighbor_point)
                    
                    # Compute the binary representations
                    binary_z1 = u.get_binary(reconstructed_z1)
                    binary_neighbor = u.get_binary(reconstructed_neighbor)
                    
                    # Compute metrics
                    ssim_value = ssim(binary_z1, binary_neighbor, data_range=1.0)
                    lbp_value = u.calculate_lbp_similarity(binary_z1, binary_neighbor)
                    
                    ssim_values.append(ssim_value)
                    lbp_values.append(lbp_value)
                
                # Average the metrics for all latent points
                avg_ssim = sum(ssim_values) / len(ssim_values)
                avg_lbp = sum(lbp_values) / len(lbp_values)
                
                print(f"SSIM between ({i},{j}) and neighbor: {avg_ssim}")
                print(f"LBP between ({i},{j}) and neighbor: {avg_lbp}")

            for vector in z:
                with torch.no_grad():
                    reconstructed_matrix = model.decode(vector)

                output_matrix = u.get_binary(reconstructed_matrix)
                lilypond_output = matrix2lilypond.matrix_to_lilypond(output_matrix, [i, j])
                
                # Save score to file
                with open('results/2d/interpolation_2d.ly', 'a') as f:
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
    print(f"""
Average grid metrics:
      SSIM: {avg_ssim}
      LBP: {avg_lbp}
""")
    return latent_points, scales, avg_ssim, avg_lbp

# Perform dimensionality reduction
def reduce_dimensions(data, method="tsne"):
    if method == "pca":
        reducer = PCA(n_components=2)
    elif method == "tsne":
        reducer = TSNE(n_components=2, random_state=42)
    else:
        raise ValueError("Invalid method. Choose 'pca' or 'tsne'.")
    return reducer.fit_transform(data)

# Get the grid of interpolated vectors
def run_interpolation(visualize=False, multiple=False):
    if not multiple:
        z1 = get_latent_vector_input(input(f"Enter a vector (z1) in x1 x2 ... format (max {u.Z_DIM} values): "))
        z2 = get_latent_vector_input(input("Enter another vector (z2): "))
        z3 = get_latent_vector_input(input("Enter a third vector (z3): "))
        z4 = get_latent_vector_input(input("Enter the fourth vector (z4): "))
    else:
        z1 = get_latent_vector_input('random')
        z2 = get_latent_vector_input('random')
        z3 = get_latent_vector_input('random')
        z4 = get_latent_vector_input('random')
    transition_vectors = interpolate_2d(z1, z2, z3, z4, grid_size=GRID_SIZE)
    latent_points, scales, avg_ssim, avg_lbp = write_and_evaluate(transition_vectors)
    reduced_latent_points = reduce_dimensions(latent_points, method="pca")

    if visualize:
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
    
    return [latent_points, avg_ssim, avg_lbp]
    



def run_multiple(visualize):
    total_ssim = 0
    total_lbp = 0
    QUANTITY = 200
    for _ in range(QUANTITY):
        result = run_interpolation(visualize=visualize, multiple=True)
        total_ssim += result[1]
        total_lbp += result[2]

    total_average_ssim = total_ssim/QUANTITY
    total_average_lbp = total_lbp/QUANTITY

    print(f'\n\nAverage SSIM per step: {total_average_ssim}')
    print(f'Average LBP per step: {total_average_lbp}')

# run_interpolation(visualize=True)
run_multiple(visualize=False)
