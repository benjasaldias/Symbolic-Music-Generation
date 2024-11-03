import torch # type: ignore
import sys
import numpy as np
import model as m
import utils as u
sys.path.append('../')
from partituras import atxt as atxt
import matplotlib.pyplot as plt
from scipy.stats import entropy

# Configuración
DEVICE = "cpu"
INPUT_DIM = u.INPUT_DIM
Z_DIM = u.Z_DIM
BATCH_SIZE = u.BATCH_SIZE

# Cargar el modelo
model = m.VariationalAutoEncoder(input_dim=INPUT_DIM)
model.load_state_dict(torch.load('vae.pth'))
model.eval()

# Función para calcular métricas
def calculate_metrics(original, generated, mu, logvar):
    metrics = {}

    # Reconstrucción (MSE) - mide qué tan cerca está la salida generada del input
    metrics['MSE'] = ((original - generated) ** 2).mean().item()

    # Divergencia KL
    kl_divergence = -0.5 * torch.sum(1 + logvar - mu.pow(2) - logvar.exp())
    metrics['KL Divergence'] = kl_divergence.item()

    # Sparseness (porcentaje de notas activas en la generación)
    sparseness = torch.mean((generated > 0.5).float()).item()
    metrics['Sparseness'] = sparseness

    # Pitch Coverage (cobertura de notas activas)
    pitch_coverage = torch.sum(torch.any(generated > 0.5, axis=0)).item() / generated.size(1)
    metrics['Pitch Coverage'] = pitch_coverage

    # Rhythmic Diversity (diversidad rítmica)
    rhythmic_diversity = entropy(generated.sum(axis=1).cpu().numpy())
    metrics['Rhythmic Diversity'] = rhythmic_diversity

    return metrics

# Generar muestras y calcular métricas
def evaluate_model(dataset, model, num_samples=10):
    all_metrics = []
    for i in range(num_samples):
        # Seleccionar muestra aleatoria del dataset
        original = dataset[i].to(DEVICE).unsqueeze(0)

        # Codificar y decodificar la muestra
        with torch.no_grad():
            mu, logvar = model.encode(original)
            epsilon = torch.randn_like(logvar)
            z_reparametrized = mu + logvar*epsilon
            reconstructed = model.decode(z_reparametrized).view(37, 106)

        # Convertir a binario para formato piano roll
        binary_generated = (reconstructed > 0.5).float()
        
        # Calcular métricas para esta muestra
        metrics = calculate_metrics(original.view(37, 106), binary_generated, mu, logvar)
        all_metrics.append(metrics)
        
        # Visualizar la generación
        plt.imshow(binary_generated.cpu().numpy(), cmap="gray")
        plt.title(f"Generación {i+1}")
        plt.show()

    # Promediar métricas para todas las muestras
    avg_metrics = {k: np.mean([m[k] for m in all_metrics]) for k in all_metrics[0]}
    print("Promedio de métricas:")
    for k, v in avg_metrics.items():
        print(f"{k}: {v:.4f}")
    return avg_metrics

# Evaluar el modelo en un conjunto de datos
input_data = atxt.torch_data  # Asume que el dataset está cargado en atxt.torch_data
dataset = [torch.tensor(matrix.reshape(-1), dtype=torch.float32) for matrix in input_data]
average_metrics = evaluate_model(dataset, model)
