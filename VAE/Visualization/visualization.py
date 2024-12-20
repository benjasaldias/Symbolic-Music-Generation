import sys
import os
import torch
import plotly.express as px
import numpy as np
import pandas as pd
from sklearn.decomposition import PCA
sys.path.append('../')
import utils as u
import Model.model as m
sys.path.append('../../')
from dataset import matrix2lilypond

# Configuration
TEST_ITERATIONS = 500
Z_DIM = u.Z_DIM

DEVICE = "cpu"

# Get vae.pth path to load the trained model
root_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
vae_path = os.path.join(root_dir, "Model", "vae.pth")

with open('scales.ly', 'w') as f:
    f.write('')

# Load model
model = m.VariationalAutoEncoder(input_dim=u.INPUT_DIM)
model.load_state_dict(torch.load(vae_path))
model.eval()

latent_points = []
scales = []

# Generate latent points
for i in range(TEST_ITERATIONS):
    # random z vector sampling
    z = torch.randn(1, Z_DIM).to(DEVICE)

    with torch.no_grad():
        reconstructed_matrix = model.decode(z)

    output_matrix = u.get_binary(reconstructed_matrix)

    lilypond_output = matrix2lilypond.matrix_to_lilypond(output_matrix)
    print(lilypond_output)

    with open('scales.ly', 'a') as f:
        f.write(f'\n%scale {i}')
        f.write(lilypond_output)

    latent_points.append(z.cpu().numpy().flatten())
    scales.append(f'scale {i}')

latent_points = np.array(latent_points)

# Get 2D representation with PCA
pca = PCA(n_components=2)
latent_points_2d = pca.fit_transform(latent_points)

# Create DataFrame for Plotly
df = pd.DataFrame(latent_points_2d, columns=['z1', 'z2'])
df['partitura'] = scales

fig = px.scatter(df, x='z1', y='z2', text='partitura', title='Latent Space (2D)', labels={'z1': 'z1', 'z2': 'z2'})
fig.update_traces(textposition='top center')
fig.update_layout(hovermode='closest')
fig.show()
