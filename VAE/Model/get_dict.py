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
from torch.utils.data import Dataset

# ============================================================
# Paths
# ============================================================

root_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '../..'))
dataset_path = os.path.join(root_dir, "dataset", "thesaurus_data.ly")

# ============================================================
# Configuration
# ============================================================

DEVICE = torch.device("cuda" if torch.cuda.is_available() else "cpu")
INPUT_DIM = u.INPUT_DIM
Z_DIM = u.Z_DIM

# ============================================================
# Data loading (SINGLE source of truth)
# ============================================================

# IMPORTANT: no augmentation, fixed order
input_data = lilypond2matrix.torcher(
    dataset_path,
    augmentation_iter=0
)

# ============================================================
# Load model
# ============================================================

model = m.VariationalAutoEncoder(INPUT_DIM)
model.load_state_dict(torch.load("vae.pth", map_location=DEVICE))
model.to(DEVICE)
model.eval()

# ============================================================
# Latent mapping
# ============================================================

def create_latent_dict():
    """
    Maps each scale in the dataset to its latent mean (mu).
    This is the ONLY stable representation of a data point in a VAE.
    """

    numbers = u.read_lilypond_comments(dataset_path)
    latent_dict = {}

    assert len(numbers) == len(input_data), \
        "Mismatch between dataset size and lilypond comments."

    for i, matrix in enumerate(input_data):
        x = torch.tensor(matrix, dtype=torch.float32).to(DEVICE)
        x = x.reshape(1, -1)

        with torch.no_grad():
            mu, logvar = model.encode(x)

        latent_dict[str(numbers[i])] = mu.squeeze(0).cpu().tolist()

    return latent_dict

# ============================================================
# Main
# ============================================================

if __name__ == "__main__":
    latent_dict = create_latent_dict()

    with open("data.json", "w") as f:
        json.dump(latent_dict, f, indent=2)

    print(f"Saved latent dictionary with {len(latent_dict)} entries.")
