import os
import sys
import json
import torch
import numpy as np
import matplotlib.pyplot as plt
sys.path.append('../')
import utils as u
import Model.model as m
sys.path.append('../../')
from dataset import matrix2lilypond, lilypond2matrix
from torch.utils.data import Dataset, DataLoader

# Data Loading
input_data = lilypond2matrix.torch_data

# Configuration
DEVICE = "cpu"
INPUT_DIM = u.INPUT_DIM
Z_DIM = u.Z_DIM
BATCH_SIZE = 1

class CustomDataset(Dataset):
    def __init__(self, data):
        self.data = data

    def __len__(self):
        return len(self.data)

    def __getitem__(self, idx):
        matrix = self.data[idx]
        return torch.tensor(matrix, dtype=torch.float32)

# Load the model
model = m.VariationalAutoEncoder(input_dim=INPUT_DIM)
model.load_state_dict(torch.load('vae.pth'))
model.eval()

# Create DataLoader
dataset = CustomDataset(input_data)
dataloader = DataLoader(dataset, batch_size=BATCH_SIZE, shuffle=False)

# Loss function
loss_fn = torch.nn.BCELoss(reduction="sum")

# Check reconstruction and calculate loss
correctas = 0
known_scales = {}
for i, original in enumerate(dataloader):
    original = original.to(DEVICE).view(BATCH_SIZE, INPUT_DIM)
    with torch.no_grad():
        reconstructed, mu, logvar = model(original)
    
    # Calculate loss
    reconstruction_loss = loss_fn(reconstructed, original)
    total_loss = reconstruction_loss

    mato = False
    # Print results
    print(f'Original matrix {i}:')
    print(original.view(u.NUM_ROWS, u.NOTE_RANGE))
    print(f'Reconstructed matrix {i}:')
    print(reconstructed.view(u.NUM_ROWS, u.NOTE_RANGE))
    print(f'Total loss for matrix {i}: {total_loss.item()}')

    # Check if the model has perfectly reconstructed the scale
    if np.all(u.get_binary(original) == u.get_binary(reconstructed)):
        print('The model has perfectly reconstructed the scale.')
        correctas += 1
        known_scales[str(i)] = mu.tolist()
    else:
        print('The model has not perfectly reconstructed the scale.')
        mato = True

    # Visualize the output matrix
    output_matrix = u.get_binary(reconstructed)
    # plt.imshow(output_matrix, cmap='gray')
    # plt.title(f"Output del Decoder (Partitura {i})")
    # plt.show()

    text = matrix2lilypond.matrix_to_lilypond(output_matrix)    
    print(text)
    # if mato:
    #     break
print(f'total = {correctas/227}')

# Save to a JSON file
with open("data.json", "w") as json_file:
    json.dump(known_scales, json_file)