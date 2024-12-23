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

INTERPOLATION_STEPS = u.INTERPOLATION_STEPS
Z_DIM = u.Z_DIM

DEVICE = "cpu"

# Get vae.pth path to load the trained model
root_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
vae_path = os.path.join(root_dir, "Model", "vae.pth")

# Empty the output lilypond file
with open('results/interpolation.ly', 'w') as f: 
    f.write('')

def calculate_lbp_similarity(matrix1, matrix2, radius=6, points=6):
    # Calculates LBP for matrix 1 and 2
    lbp1 = mahotas.features.lbp(matrix1, radius, points)
    lbp2 = mahotas.features.lbp(matrix2, radius, points)

    # Euclidian distance between LBPs
    distance = euclidean(lbp1, lbp2)
    return distance

# Load model
model = m.VariationalAutoEncoder(input_dim=u.INPUT_DIM)
model.load_state_dict(torch.load(vae_path))
model.eval()

def interpolate(model, visualize=False, interpolation_type='slerp'):
    latent_points = []
    scales = []
    generated_scales = []
    original_scales = []
    latent_points_interpolated = []
    latent_points_original_interp = []
    
    # Get Z vectors input
    inp_z1 = input(f"Input your first vector of {Z_DIM} dimensions (example: x1 x2 x3...): ")
    inp_z2 = input(f"Input your second vector of {Z_DIM} dimensions (example: x1 x2 x3...): ")

    if inp_z1 == 'random' or inp_z1 == '':
        z1 = torch.randn(1, Z_DIM).to(DEVICE) # Normal Distribution
    else:
        inp_z1 = inp_z1.split(' ')
        z1 = torch.tensor([float(x) for x in inp_z1]).to(DEVICE)

    if inp_z2 == 'random' or inp_z2 == '':
        z2 = torch.randn(1, Z_DIM).to(DEVICE) # Normal Distribution
    else:
        inp_z2 = inp_z2.split(' ')
        z2 = torch.tensor([float(x) for x in inp_z2]).to(DEVICE)

    # Check if input vectors are in Z_DIM dimensions
    if z1.shape[1] != Z_DIM or z2.shape[1] != Z_DIM:
        raise ValueError(f"Both vectors must be of {Z_DIM} dimensions.")

    # Generate interpolation steps
    transition_vectors = []
    for i in range(INTERPOLATION_STEPS):
        t = i / (INTERPOLATION_STEPS - 1)
        if interpolation_type == 'slerp':
            z_point = u.slerp(z1, z2, t)
            transition_vectors.append(z_point)
            
        elif interpolation_type == 'linear':
            z_point = u.linear_interpolation(z1, z2, 10)
            transition_vectors = z_point
    if interpolation_type == 'slerp':
        transition_vectors = torch.stack(transition_vectors) # stack vectors
    original_transition_vectors = transition_vectors
    

    # print("Transition vectors:")
    # print(transition_vectors)
    
    written = []
    counter = 0
    scale_number = 0
    # Decode each latent point into a matrix
    for i in range(INTERPOLATION_STEPS):
        z = transition_vectors[i]
        with torch.no_grad():
            reconstructed_matrix = model.decode(z) 

        output_matrix = u.get_binary(reconstructed_matrix)
        lilypond_output = matrix2lilypond.matrix_to_lilypond(output_matrix, i)

        with open('results/interpolation.ly', 'a') as f:  
            if lilypond_output not in written:
                f.write(f'\n%scale{scale_number}')
                scale_number += 1
                f.write(lilypond_output)
                generated_scales.append(lilypond_output)
                original_scales.append(lilypond_output)
                written.append(lilypond_output)
                latent_points_interpolated.append(transition_vectors[i].cpu().numpy().flatten())
            else:
                original_scales.append(lilypond_output)
                latent_points_original_interp.append(original_transition_vectors[i].cpu().numpy().flatten())
                continue
            counter += 1

        # Store latent point and its score
        latent_points.append(z.cpu().numpy().flatten()) 
        scales.append(f'scale {i}') 
    u.to_midi("interpolation")
    print('LilyPond file saved in the Interpolation/results folder.')
    
    if visualize == True:
        latent_points = np.array(latent_points)

        # Create DataFrame for Plotly
        df = pd.DataFrame(latent_points, columns=[f'z{i+1}' for i in range(Z_DIM)])

        # Extract each scale number as "i" and store it as "score {i}"
        df['partitura'] = [f'score {int(p.split()[-1])}' if 'partitura' in p else f'score {p}' for p in scales]

        fig = px.scatter(
            df, x='z1', y='z2', text='partitura',
            title='Latent Space (Slerp)', labels={'z1': 'z1', 'z2': 'z2'}
        )
        fig.update_traces(textposition='top center')
        fig.update_layout(hovermode='closest')
        fig.show()


    ### CALCULATE METRICS ###
    l2_regularities = []
    ssim_scores = []
    lbp_scores = []

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
        output_matrix1 = u.get_binary(matrix1)
        output_matrix2 = u.get_binary(matrix2)

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
    output_matrix_start = u.get_binary(matrix_start)
    output_matrix_finish = u.get_binary(matrix_finish)
    ssim_score_s_f = ssim(output_matrix_start, output_matrix_finish, data_range=1.0)
    lbp_score_s_f = calculate_lbp_similarity(output_matrix_start, output_matrix_finish)

    # Get l2 regularity mean
    average_l2_regularity = np.mean(l2_regularities)
    average_l2_regularity = np.divide(average_l2_regularity, l2_total_distance)

    # Print metrics
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
    QUANTITY = 10
    for _ in range(QUANTITY):
        result = interpolate(model, visualize=visualize, interpolation_type=interpolation_type)
        total_ssim += result[0]
        s_f_total_ssim += result[1]
        total_lbp += result[2]
        s_f_total_lbp += result[3]

    total_average_ssim = total_ssim/QUANTITY
    s_f_average_ssim = s_f_total_ssim/QUANTITY
    total_average_lbp = total_lbp/QUANTITY
    s_f_average_lbp = s_f_total_lbp/QUANTITY

    print(f'\n\nAverage SSIM per step: {total_average_ssim}')
    print(f'Average start-finish SSIM: {s_f_average_ssim}')
    print(f'Average LBP per step: {total_average_lbp}')
    print(f'Average start-finish LBP: {s_f_average_lbp}')

interpolate(model, visualize=False, interpolation_type='slerp')
# run_multiple(visualize=True, interpolation_type='slerp')
