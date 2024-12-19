import os
import sys
import torch
import plotly.express as px
import numpy as np
import pandas as pd
import mahotas
from scipy.spatial.distance import euclidean
sys.path.append('../')
import utils as u
import Model.model as m
sys.path.append('../../')
from dataset import matrix2lilypond
from skimage.metrics import structural_similarity as ssim

CANTIDAD_VECTORES = 10
Z_DIM = u.Z_DIM

DEVICE = "cpu"

# Get vae.pth path to load the trained model
root_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
vae_path = os.path.join(root_dir, "Model", "vae.pth")

# Empty the output lilypond file
with open('interpolation.ly', 'w') as f: 
    f.write('')

def process_matrix(matrix):
    matrix = matrix.view(37, 106)

    # Crear una matriz de ceros del mismo tamaño
    binary_output = torch.zeros_like(matrix)

    # Obtener el índice del valor máximo en cada fila
    max_indices = torch.argmax(matrix, dim=1)

    # Usar los índices para colocar 1 en el valor máximo de cada fila
    binary_output[torch.arange(matrix.size(0)), max_indices] = 1

    output_matrix = binary_output.view(37, 106).cpu().numpy()

    return output_matrix

def calculate_lbp_similarity(matrix1, matrix2, radius=6, points=6):
    # Calculates LBP for matrix 1 and 2
    lbp1 = mahotas.features.lbp(matrix1, radius, points)
    lbp2 = mahotas.features.lbp(matrix2, radius, points)

    # Euclidian distance between LBPs
    distance = euclidean(lbp1, lbp2)
    return distance

# SLERP interpolation function
def slerp(z1, z2, t):
    # Check magnitude 0 
    if z1.norm() == 0 or z2.norm() == 0:
        raise ValueError("Cannot SLERP over vectors of magnitude 0.")
    
    # Normalize
    z1 = z1 / z1.norm()
    z2 = z2 / z2.norm()
    
    # Calculate cosine of angle between z1 and z2
    dot_product = torch.sum(z1 * z2)
    dot_product = torch.clamp(dot_product, -1.0, 1.0)
    
    # Calculate angle
    theta = torch.acos(dot_product)
    
    # Calculate sine of angle
    sin_theta = torch.sin(theta)
    
    # If sine close to 0, use linear interpolation
    if torch.isclose(sin_theta, torch.tensor(0.0)):
        return (1 - t) * z1 + t * z2
    
    # Calculate weights for SLERP interpolation
    a = torch.sin((1 - t) * theta) / sin_theta
    b = torch.sin(t * theta) / sin_theta
    
    # Return interpolated vector
    return a * z1 + b * z2

# Linear interpolation function
def linear_interpolation(z1, z2, steps):
    if steps < 2:
        raise ValueError("Number of steps must be at least 2.")

    # Generate interpolation weights
    t_values = torch.linspace(0, 1, steps).to(z1.device)
    
    # Calculate interpolated vectors
    interpolated_vectors = [(1 - t) * z1 + t * z2 for t in t_values]
    
    # Stack into a single tensor
    return torch.stack(interpolated_vectors)

# Load model
model = m.VariationalAutoEncoder(input_dim=3922)
model.load_state_dict(torch.load(vae_path))
model.eval()

def interpolate(model, visualize=False, interpolation_type='slerp'):
    latent_points = []
    partituras = []
    partituras_generated = []
    partituras_original = []
    latent_points_interpolated = []
    latent_points_original_interp = []
    # Obtener entrada de vectores z de Z_DIM dimensiones
    # inp_z1 = input(f"Ingresa un vector de {Z_DIM} dimensiones (separado por espacios): ")
    # inp_z2 = input(f"Ingresa otro vector de {Z_DIM} dimensiones (separado por espacios): ")

    inp_z1 = 'random'
    inp_z2 = 'random'

    if inp_z1 == 'random':
        z1 = torch.randn(1, Z_DIM).to(DEVICE) # Normal Distribution
    else:
        inp_z1 = inp_z1.split(' ')
        z1 = torch.tensor([float(x) for x in inp_z1]).to(DEVICE)

    if inp_z2 == 'random':
        z2 = torch.randn(1, Z_DIM).to(DEVICE) # Normal Distribution
    else:
        inp_z2 = inp_z2.split(' ')
        z2 = torch.tensor([float(x) for x in inp_z2]).to(DEVICE)

    # Asegurarse de que el tamaño de los vectores coincida con Z_DIM
    if z1.shape[1] != Z_DIM or z2.shape[1] != Z_DIM:
        raise ValueError(f"Ambos vectores deben tener exactamente {Z_DIM} dimensiones.")

    # Generar puntos Slerp en todas las dimensiones
    transition_vectors = []
    for i in range(CANTIDAD_VECTORES):
        t = i / (CANTIDAD_VECTORES - 1)  # Proporción entre 0 y 1
        if interpolation_type == 'slerp':
            z_point = slerp(z1, z2, t)
            transition_vectors.append(z_point)
            
        elif interpolation_type == 'linear':
            z_point = linear_interpolation(z1, z2, 10)
            transition_vectors = z_point
    if interpolation_type == 'slerp':
        transition_vectors = torch.stack(transition_vectors)  # Apilar los vectores
    original_transition_vectors = transition_vectors
    

    print("Vectores de transición:")
    print(transition_vectors)
    
    written = []
    counter = 0
    scale_number = 0
    # Decodificar cada punto latente a matrices binarias
    for i in range(CANTIDAD_VECTORES):
        z = transition_vectors[i]
        with torch.no_grad():
            reconstructed_matrix = model.decode(z) 

        # Cambiar la forma a (37, 106)
        reconstructed_matrix = reconstructed_matrix.view(37, 106)

        # Crear una matriz de ceros del mismo tamaño
        binary_output = torch.zeros_like(reconstructed_matrix)

        # Obtener el índice del valor máximo en cada fila
        max_indices = torch.argmax(reconstructed_matrix, dim=1)

        # Usar los índices para colocar 1 en el valor máximo de cada fila
        binary_output[torch.arange(reconstructed_matrix.size(0)), max_indices] = 1

        output_matrix = binary_output.view(37, 106).cpu().numpy()

        lilypond_output = matrix2lilypond.matrix_to_lilypond(output_matrix, i)

        with open('interpolation.ly', 'a') as f:  
            if lilypond_output not in written:
                f.write(f'\n%scale{scale_number}')
                scale_number += 1
                f.write(lilypond_output)
                partituras_generated.append(lilypond_output)
                partituras_original.append(lilypond_output)
                written.append(lilypond_output)
                latent_points_interpolated.append(transition_vectors[i].cpu().numpy().flatten())
            else:
                partituras_original.append(lilypond_output)
                latent_points_original_interp.append(original_transition_vectors[i].cpu().numpy().flatten())
                # transition_vectors_list.pop(counter)
                # transition_vectors = torch.stack(transition_vectors_list)
                # skipped += 1
                continue
            counter += 1

        # Almacenar el punto latente y la partitura
        latent_points.append(z.cpu().numpy().flatten()) 
        partituras.append(f'partitura {i}') 

    if visualize == True:
        # Convertir a un array numpy para graficar
        latent_points = np.array(latent_points)

        # Crear un DataFrame para Plotly
        df = pd.DataFrame(latent_points, columns=[f'z{i+1}' for i in range(Z_DIM)])

        # Extraer el número de cada partitura y cambiarlo a "score i"
        df['partitura'] = [f'score {int(p.split()[-1])}' if 'partitura' in p else f'score {p}' for p in partituras]

        # Graficar los puntos latentes en el plano 2D usando Plotly
        fig = px.scatter(
            df, x='z1', y='z2', text='partitura',
            title='Espacio Latente (Slerp)', labels={'z1': 'z1', 'z2': 'z2'}
        )
        fig.update_traces(textposition='top center')
        fig.update_layout(hovermode='closest')
        fig.show()


    # Calcular las métricas de evaluación
    l2_regularities = []
    ssim_scores = []
    lbp_scores = []

    # Evaluar similitudes y regularidad entre vectores consecutivos
    z_start = transition_vectors[0]
    z_finish = transition_vectors[len(transition_vectors) - 1]
    
    for i in range(len(transition_vectors) - 1):
        # Consecutive vectors
        z1 = transition_vectors[i]
        z2 = transition_vectors[i + 1]

        with torch.no_grad():
            matrix1 = model.decode(z1) 
            matrix2 = model.decode(z2) 
        
        # Euclidian distance (L2)
        l2_distance = torch.norm(matrix1 - matrix2).item()
        l2_regularities.append(l2_distance)

        # Process matrixes
        output_matrix1 = process_matrix(matrix1)
        output_matrix2 = process_matrix(matrix2)

        # Calculate SSIM and LBP per step
        ssim_score = ssim(output_matrix1, output_matrix2, data_range=1.0)
        lbp_score = calculate_lbp_similarity(output_matrix1, output_matrix2)
        ssim_scores.append(ssim_score)
        lbp_scores.append(lbp_score)

    # Average SSIM and LBP
    average_ssim = np.mean(ssim_scores)
    average_lbp = np.mean(lbp_scores)

    with torch.no_grad():
        matrix_start = model.decode(z_start)
        matrix_finish = model.decode(z_finish)
        l2_total_distance = torch.norm(matrix_start - matrix_finish).item()

    # SSIM and LBP start-finish
    output_matrix_start = process_matrix(matrix_start)
    output_matrix_finish = process_matrix(matrix_finish)
    ssim_score_s_f = ssim(output_matrix_start, output_matrix_finish, data_range=1.0)
    lbp_score_s_f = calculate_lbp_similarity(output_matrix_start, output_matrix_finish)

    # Calcular promedios
    average_l2_regularity = np.mean(l2_regularities)
    average_l2_regularity = np.divide(average_l2_regularity, l2_total_distance)

    # Imprimir métricas
    print("\nInterpolation Metrics:")
    print("\n #### L2 Regularity ### \n")
    print(f"- Average L2 Regularity: {average_l2_regularity:.4f}")
    print(f"- L2 Regularity per step: {l2_regularities}")
    print("\n ### SSIM ### \n")
    print(f"- Average SSIM: {average_ssim:.4f}")
    print(f"- SSIM per step: {ssim_scores}")
    print(f"- SSIM start-finish: {ssim_score_s_f:.4f}")
    print("\n ### LBP ### \n")
    print(f"- Average LBP: {average_lbp:.4f}")
    print(f"- LBP per step: {lbp_scores}")
    print(f"- LBP start-finish: {lbp_score_s_f:.4f}")
    return [average_ssim, ssim_score_s_f, average_lbp, lbp_score_s_f]

def run_multiple(visualize, interpolation_type):
    total_ssim = 0
    s_f_total_ssim = 0
    total_lbp = 0
    s_f_total_lbp = 0
    CANTIDAD = 10
    for _ in range(CANTIDAD):
        result = interpolate(model, visualize=visualize, interpolation_type=interpolation_type)
        total_ssim += result[0]
        s_f_total_ssim += result[1]
        total_lbp += result[2]
        s_f_total_lbp += result[3]

    total_average_ssim = total_ssim/CANTIDAD
    s_f_average_ssim = s_f_total_ssim/CANTIDAD
    total_average_lbp = total_lbp/CANTIDAD
    s_f_average_lbp = s_f_total_lbp/CANTIDAD

    print(f'\n\nAverage SSIM per step: {total_average_ssim}')
    print(f'Average start-finish SSIM: {s_f_average_ssim}')
    print(f'Average LBP per step: {total_average_lbp}')
    print(f'Average start-finish LBP: {s_f_average_lbp}')

interpolate(model, visualize=True, interpolation_type='slerp')
# run_multiple(visualize=True, interpolation_type='slerp')