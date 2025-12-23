import os
import sys
import json
import torch
import numpy as np

sys.path.append('../')
import utils as u
import Model.model as m
sys.path.append('../../')
from dataset import lilypond2matrix

DEVICE = torch.device("cuda" if torch.cuda.is_available() else "cpu")
INPUT_DIM = u.INPUT_DIM
Z_DIM = u.Z_DIM

# Carga sin aumento
root_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '../..'))
dataset_path = os.path.join(root_dir, "dataset", "thesaurus_data.ly")
input_data = lilypond2matrix.torcher(dataset_path, augmentation_iter=0)

model = m.VariationalAutoEncoder(INPUT_DIM)
model.load_state_dict(torch.load("vae.pth", map_location=DEVICE))
model.to(DEVICE).eval()

def create_latent_dict():
    numbers = u.read_lilypond_comments(dataset_path)
    latent_dict = {}

    for i, vector in enumerate(input_data):
        x = torch.tensor(vector, dtype=torch.float32).to(DEVICE).view(1, -1)
        with torch.no_grad():
            mu, _ = model.encode(x)
        latent_dict[str(numbers[i])] = mu.squeeze(0).cpu().tolist()
    return latent_dict

if __name__ == "__main__":
    ld = create_latent_dict()
    with open("data.json", "w") as f:
        json.dump(ld, f, indent=2)
    print(f"Diccionario guardado con {len(ld)} entradas.")