import os
import torch
import sys
import json
import numpy as np
sys.path.append('../')
import utils as u
import Model.model as m
from scipy.stats import entropy

# Config
DEVICE = "cpu"
INPUT_DIM = u.INPUT_DIM
Z_DIM = u.Z_DIM
LEN_DATASET = u.MAX_SCALES
NUM_SAMPLES = 100

model = m.VariationalAutoEncoder(input_dim=INPUT_DIM)
model.load_state_dict(torch.load('vae.pth'))
model.eval()

def calculate_symmetry(vector):
    # vector shape: (37,)
    # Simetría interválica: la segunda mitad debe ser el inverso de la primera
    v_np = vector.cpu().numpy()
    mid = len(v_np) // 2
    first_half = v_np[:mid]
    second_half = v_np[-mid:]
    # Reflejo negativo
    mirror = -np.flip(first_half)
    
    mse = np.mean((second_half - mirror)**2)
    return 1 / (1 + mse) # Score entre 0 y 1

def calculate_metrics(original, generated, mu, logvar):
    metrics = {}

    # KL Divergence
    kl_divergence = -0.5 * torch.sum(1 + logvar - mu.pow(2) - logvar.exp()) 
    metrics['KL Divergence'] = kl_divergence.item()

    # Symmetry
    metrics['Symmetry'] = calculate_symmetry(generated.squeeze())

    # Range (Extensión de la escala)
    pitches = np.cumsum(generated.cpu().numpy())
    metrics['Pitch Range'] = np.ptp(pitches)

    return metrics

def evaluate_model(dataset, model, num_samples=100):
    all_metrics = []
    
    for i in range(min(len(dataset), LEN_DATASET)):
        original = dataset[i].to(DEVICE).unsqueeze(0)
        mu, logvar = model.encode(original)
        
        for _ in range(num_samples):
            z = mu + torch.randn_like(logvar) * torch.exp(0.5 * logvar)
            generated = model.decode(z)
            
            metrics = calculate_metrics(original, generated, mu, logvar)
            all_metrics.append(metrics)

    avg_metrics = {k: np.mean([m[k] for m in all_metrics]) for k in all_metrics[0]}
    for k, v in avg_metrics.items():
        print(f"{k}: {v:.4f}")
    return avg_metrics

# Carga de datos vectoriales
root_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
json_path = os.path.join(root_dir, "Model", "torch_data.json")

with open(json_path, "r") as json_file:
    input_data = json.load(json_file)
dataset = [torch.tensor(d['x']).float() for d in input_data] # Asumiendo dict con llave 'x'
evaluate_model(dataset, model)