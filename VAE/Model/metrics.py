import os
import torch # type: ignore
import sys
import json
import numpy as np
sys.path.append('../')
import utils as u
import Model.model as m
sys.path.append('../../')
from dataset import lilypond2matrix
from scipy.stats import entropy
from skimage.metrics import structural_similarity as ssim

# Data
DEVICE = "cpu"
INPUT_DIM = u.INPUT_DIM
Z_DIM = u.Z_DIM
LEN_DATASET = 227
NUM_SAMPLES = 600

# Load model
model = m.VariationalAutoEncoder(input_dim=INPUT_DIM)
model.load_state_dict(torch.load('vae.pth'))
model.eval()

root_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
json_path = os.path.join(root_dir, "Model", "torch_data.json")

# Symmetry metric
def calculate_symmetry(matrix):
    matrix = matrix.cpu().numpy()
    symmetry_score = 0

    for i in range(18):
        last_row = len(matrix)
        for row in range(len(matrix)):
            if np.all(np.max(matrix, axis=1) < 1):
                last_row = row - 1
        scale_half = (last_row - 1) // 2
        top_row = matrix[scale_half - i - 1]
        bottom_row = matrix[scale_half + i + 1]
        
        # Average absolute distance between opposite rows
        symmetry_score += np.abs(top_row - bottom_row).mean()

    symmetry_score = 1 - (symmetry_score / 18)
    return symmetry_score


def calculate_metrics(original, generated, mu, logvar, dataset):
    generated = u.get_binary(generated, numpy=False)
    metrics = {}

    # KL Divergence
    kl_divergence = -0.5 * torch.sum(1 + logvar - mu.pow(2) - logvar.exp()) 
    metrics['KL Divergence'] = kl_divergence.item()

    # Sparseness
    sparseness = torch.mean((generated > 0.5).float()).item()
    metrics['Sparseness'] = sparseness

    # Pitch Coverage
    pitch_coverage = torch.sum(torch.any(generated > 0.5, axis=0)).item() / generated.size(1)
    metrics['Pitch Coverage'] = pitch_coverage

    # Rhythmic Diversity
    rhythmic_diversity = entropy(generated.sum(axis=0).cpu().numpy())
    metrics['Rhythmic Diversity'] = rhythmic_diversity

    # Symmetry
    symmetry_score = calculate_symmetry(generated)
    metrics['Symmetry'] = symmetry_score

    # Difference (0 if generated \in dataset, else 1)
    diff = 1  
    for data in dataset:
        if torch.equal(data.view(u.NUM_ROWS, u.NOTE_RANGE), generated):
            diff = 0
            break
    metrics['Diff'] = diff

    return metrics

# Generate samples and run evaluation
def evaluate_model(dataset, model, num_samples=1000):
    print('This may take a few minutes...')
    all_metrics = []
    for i in range(LEN_DATASET):
        # Random z vector sampling
        original = dataset[i].to(DEVICE).unsqueeze(0)
        mu, logvar = model.encode(original)

        # Code and decode samples
        reconstructed_matrixes = []
        binary_generated_list = []
        for _ in range(num_samples):
            with torch.no_grad(): 
                z_reparametrized = torch.randn(1, Z_DIM).to(DEVICE)
                reconstructed = model.decode(z_reparametrized).view(u.NUM_ROWS, u.NOTE_RANGE)
                reconstructed_matrixes.append(reconstructed)

            binary_generated = u.get_binary(reconstructed)

            # Get binary piano roll format
            binary_generated = torch.tensor(binary_generated.reshape(-1), dtype=torch.float32)
            binary_generated = binary_generated.view(u.NUM_ROWS, u.NOTE_RANGE)
            binary_generated_list.append(binary_generated)


        # Calculate metrics
        for matrix in binary_generated_list:
            metrics = calculate_metrics(original.view(u.NUM_ROWS, u.NOTE_RANGE), matrix, mu, logvar, dataset)
            all_metrics.append(metrics)

    # Average metrics for all samples
    avg_metrics = {k: np.mean([m[k] for m in all_metrics]) for k in all_metrics[0]}
    print("Promedio de métricas:")
    for k, v in avg_metrics.items():
        print(f"{k}: {v:.4f}")
    return avg_metrics


with open(json_path, "r") as json_file:
    input_data = json.load(json_file)
dataset = [torch.tensor(matrix.reshape(-1), dtype=torch.float32) for matrix in input_data]
average_metrics = evaluate_model(dataset, model, num_samples=NUM_SAMPLES)

#Promedio de métricas: H_DIM = 300, Z_DIM = 12, BETA = 0.8
# KL Divergence: 6.8146
# Sparseness: 0.0094
# Pitch Coverage: 0.1692
# Rhythmic Diversity: 2.8428
# Symmetry: 0.9994
# Diff: 0.9114

# Promedio de métricas: AUGMENTED DATA
# KL Divergence: 5.9218
# Sparseness: 0.0159
# Pitch Coverage: 0.2777
# Rhythmic Diversity: 2.8114
# Symmetry: 0.9991
# Diff: 0.9369