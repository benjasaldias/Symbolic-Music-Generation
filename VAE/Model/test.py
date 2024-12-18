import os
import sys
import torch
import numpy as np
import matplotlib.pyplot as plt
sys.path.append('../')
import utils as u
import Model.model as m
sys.path.append('../../')
from dataset import matrix2lilypond, lilypond2matrix
from torch.utils.data import Dataset

# Data Loading
input_data = lilypond2matrix.torch_data

# Configuration
CANTIDAD_TESTS = 10
DEVICE = "cpu"
INPUT_DIM = u.INPUT_DIM
Z_DIM = u.Z_DIM

# Crear el directorio para almacenar las partituras, si no existe
output_dir = "tests"
os.makedirs(output_dir, exist_ok=True)

class CustomDataset(Dataset):
    def __init__(self, data):
        self.data = data

    def __len__(self):
        return len(self.data)

    def __getitem__(self, idx):
        matrix = self.data[idx].reshape(-1)  # aplanar
        return torch.tensor(matrix, dtype=torch.float32)

# Cargar el modelo
model = m.VariationalAutoEncoder(input_dim=INPUT_DIM)
model.load_state_dict(torch.load('vae.pth'))
model.eval()
# Threshold for significant activation
THRESHOLD = 0

# Base C index in your note range
BASE_C_INDEX = u.NOTE_RANGE_LIST.index("c") 

for i in range(CANTIDAD_TESTS):
    z = 0 + 1.5 * torch.randn(1, Z_DIM).to(DEVICE)
    print('vector z:', z)

    with torch.no_grad():
        reconstructed_matrix = model.decode(z)

    # Reshape to (u.NUM_ROWS, u.NOTE_RANGE)
    reconstructed_matrix = reconstructed_matrix.view(u.NUM_ROWS, u.NOTE_RANGE)

    # Create a zero matrix of the same size
    binary_output = torch.zeros_like(reconstructed_matrix)

    # Find the maximum value in each row and its index
    max_values, max_indices = torch.max(reconstructed_matrix, dim=1)

    # Apply thresholding
    valid_indices = max_values > THRESHOLD
    binary_output[torch.arange(reconstructed_matrix.size(0))[valid_indices], max_indices[valid_indices]] = 1

    # Convert to numpy for further processing
    output_matrix = binary_output.cpu().numpy()

    # Convert the binary matrix to LilyPond format
    lilypond_output = matrix2lilypond.matrix_to_lilypond(output_matrix)

    # Save the file
    file_path = os.path.join(output_dir, f'scale_{i}.ly')
    with open(file_path, 'w') as f:
        comment = f'% z vector: {z}'
        index = comment.find('\n')
        comment = comment[:index] + comment[index + 10:]
        f.write(f'{comment}')
        f.write(lilypond_output)

    # Visualize the output matrix
    plt.imshow(output_matrix, cmap='gray')
    plt.title(f"Output del Decoder (Partitura {i})")
    plt.show()
    print(f"Partitura guardada en: {file_path}")