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

# Get vae.pth path to load the trained model
root_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
data_path = os.path.join(root_dir, "thesaurus_data.ly")

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

# Load original, unaugmented data for dictionary creation
input_data = lilypond2matrix.torcher(data_path, apply_augmentation=False)

# Loss function
loss_fn = torch.nn.BCELoss(reduction="sum")

def create_dict():
    numbers = u.read_lilypond_comments(data_path)
    # Check reconstruction and calculate loss
    correct = 0
    known_scales = {}
    for i, original in enumerate(input_data):
        original = original.to(DEVICE).view(BATCH_SIZE, INPUT_DIM)
        with torch.no_grad():
            reconstructed, mu, logvar = model(original)
        
        # Calculate loss
        reconstruction_loss = loss_fn(reconstructed, original)
        total_loss = reconstruction_loss

        # Check if the model has perfectly reconstructed the scale
        if np.all(u.get_binary(original) == u.get_binary(reconstructed)):
            print('The model has perfectly reconstructed the scale.')
            correct += 1
            known_scales[str(numbers[i])] = mu.tolist()
        else:
            print('The model has not perfectly reconstructed the scale.')

        # Visualize the output matrix
        output_matrix = u.get_binary(reconstructed)
        # plt.imshow(output_matrix, cmap='gray')
        # plt.title(f"Output del Decoder (Partitura {i})")
        # plt.show()

        text = matrix2lilypond.matrix_to_lilypond(output_matrix)    
        print(text)
    print(f'total = {correct/227}')

    # Save to a JSON file
    with open("data.json", "w") as json_file:
        json.dump(known_scales, json_file)

def update_dict(iterations):
    numbers = u.read_lilypond_comments(data_path)
    # Load the JSON file
    with open("data.json", "r") as json_file:
        known_scales = json.load(json_file)
    for _ in range(iterations):
        # Check reconstruction and calculate loss
        correct = 0
        for i, original in enumerate(input_data):
            original = original.to(DEVICE).view(BATCH_SIZE, INPUT_DIM)
            with torch.no_grad():
                mu, logvar = model.encode(original)
                z = u.reparameterize(mu, logvar)
                reconstructed = model.decode(z)
            
            # Check if the model has perfectly reconstructed the scale
            if np.all(u.get_binary(original) == u.get_binary(reconstructed)):
                # print('The model has perfectly reconstructed the scale.')
                correct += 1
                if i not in known_scales.keys():
                    known_scales[str(numbers[i])] = z.tolist()
                elif known_scales[str(i)] != z.tolist():
                    known_scales[str(numbers[i])] = z.tolist()
            else:
                # print('The model has not perfectly reconstructed the scale.')
                counter = 0
                while np.any(u.get_binary(original) != u.get_binary(reconstructed)):
                    z = u.reparameterize(mu, logvar)
                    reconstructed = model.decode(z)
                    counter += 1
                    if counter == 100:
                        # output_matrix = u.get_binary(reconstructed)
                        # text = matrix2lilypond.matrix_to_lilypond(output_matrix)  
                        # print(text)
                        break
                if np.all(u.get_binary(original) == u.get_binary(reconstructed)):
                    if i not in known_scales.keys():
                        known_scales[str(numbers[i])] = z.tolist()
                    elif known_scales[str(i)] != z.tolist():
                        known_scales[str(numbers[i])] = z.tolist()

            # Visualize the output matrix
            # plt.imshow(output_matrix, cmap='gray')
            # plt.title(f"Output del Decoder (Partitura {i})")
            # plt.show()
        print(f'total = {correct/227}')

        # Save to a JSON file
        with open("data.json", "w") as json_file:
            json.dump(known_scales, json_file)
    return

def update_keys():
    numbers = u.read_lilypond_comments(data_path)
    # Load the JSON file
    with open("data.json", "r") as json_file:
        known_scales = json.load(json_file)
    for i in range(len(known_scales)):
            if str(i) in known_scales.keys():
                known_scales[str(numbers[i])] = known_scales.pop(str(i))
    print(known_scales.keys())

    # Save to a JSON file
    # with open("data.json", "w") as json_file:
    #     json.dump(known_scales, json_file)
    return

create_dict()
update_dict(10)
update_keys()