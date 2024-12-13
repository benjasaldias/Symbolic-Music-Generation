import torch # type: ignore
import sys
import numpy as np
sys.path.append('../')
import utils as u
import Model.model as m
sys.path.append('../../')
from dataset import lilypond2matrix
from scipy.stats import entropy
from skimage.metrics import structural_similarity as ssim

# Configuración
DEVICE = "cpu"
INPUT_DIM = u.INPUT_DIM
Z_DIM = u.Z_DIM
BATCH_SIZE = u.BATCH_SIZE

# Cargar el modelo
model = m.VariationalAutoEncoder(input_dim=INPUT_DIM)
model.load_state_dict(torch.load('vae.pth'))
model.eval()

# Métrica de simetría respecto a la fila central
def calculate_symmetry(matrix):
    # Convertir a numpy para facilitar el cálculo
    matrix = matrix.cpu().numpy()

    # Definir la fila central
    central_row = matrix[18]

    # Calcular la distancia promedio entre filas simétricas
    num_rows = matrix.shape[0]
    symmetry_score = 0

    for i in range(18):  # Comparar filas simétricas respecto a la fila central
        top_row = matrix[18 - i - 1]
        bottom_row = matrix[18 + i + 1]
        
        # Distancia absoluta promedio entre las filas opuestas
        symmetry_score += np.abs(top_row - bottom_row).mean()

    # Promediar la distancia y tomar el inverso (simetría ideal = 1)
    symmetry_score = 1 - (symmetry_score / 18)
    return symmetry_score


# Función para calcular métricas
def calculate_metrics(original, generated, mu, logvar, dataset):
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
    rhythmic_diversity = entropy(generated.sum(axis=0).cpu().numpy())
    metrics['Rhythmic Diversity'] = rhythmic_diversity

    # Simetría respecto a la fila central
    symmetry_score = calculate_symmetry(generated)
    metrics['Symmetry'] = symmetry_score

    # Diff (0 si pertenece al dataset, 1 si no)
    diff = 1  # Por defecto, asumimos que no pertenece
    for data in dataset:
        if torch.equal(data.view(37, 106), generated):
            diff = 0
            break
    metrics['Diff'] = diff

    return metrics

# Generar muestras y calcular métricas
def evaluate_model(dataset, model, num_samples=200):
    print('This may take a few minutes...')
    all_metrics = []
    for i in range(BATCH_SIZE):
        # Seleccionar muestra aleatoria del dataset
        original = dataset[i].to(DEVICE).unsqueeze(0)

        # Codificar y decodificar la muestra
        reconstructed_matrixes = []
        binary_generated_list = []
        for _ in range(num_samples):
            with torch.no_grad():
                mu, logvar = model.encode(original)
                z_reparametrized = torch.randn(1, Z_DIM).to(DEVICE)
                reconstructed = model.decode(z_reparametrized).view(37, 106)
                reconstructed_matrixes.append(reconstructed)

            # Convertir a binario para formato piano roll
            binary_generated = (reconstructed > 0.5).float()
            binary_generated = torch.tensor(binary_generated.reshape(-1), dtype=torch.float32)
            binary_generated = binary_generated.view(37, 106)
            binary_generated_list.append(binary_generated)


        # Calcular métricas para esta muestra
        for matrix in binary_generated_list:
            metrics = calculate_metrics(original.view(37, 106), matrix, mu, logvar, dataset)
            all_metrics.append(metrics)
            
        # Visualizar la generación
        # plt.imshow(binary_generated.cpu().numpy(), cmap="gray")
        # plt.title(f"Generación {i+1}")
        # plt.show()

    # Promediar métricas para todas las muestras
    avg_metrics = {k: np.mean([m[k] for m in all_metrics]) for k in all_metrics[0]}
    print("Promedio de métricas:")
    for k, v in avg_metrics.items():
        print(f"{k}: {v:.4f}")
    return avg_metrics

# Evaluar el modelo en un conjunto de datos
input_data = lilypond2matrix.torch_data  # Carga datos originales
dataset = [torch.tensor(matrix.reshape(-1), dtype=torch.float32) for matrix in input_data]
average_metrics = evaluate_model(dataset, model, num_samples=100)

# print(len(atxt.torch_data[189][0]))

# Promedio de métricas:
# MSE: 0.0117
# KL Divergence: 5.9092
# Sparseness: 0.0065
# Pitch Coverage: 0.1229
# Rhythmic Diversity: 3.1519