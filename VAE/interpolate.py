import sys
import os
import torch
import plotly.express as px
import numpy as np
import model as m
import pandas as pd  # Asegúrate de importar pandas
sys.path.append('../')
from partituras import atxt as atxt
from partituras import ash as ash

CANTIDAD_VECTORES = 10
Z_DIM = 2 

DEVICE = "cpu"

with open('interpolation.ly', 'w') as f: 
    f.write('')

# Función para generar vectores equidistantes
def interpolate(z1, z2, num_points=CANTIDAD_VECTORES):
    z_points = []
    
    # Generar puntos equidistantes entre z1 y z2
    for i in range(num_points):
        alpha = i / (num_points - 1)
        z_point = (1 - alpha) * z1 + alpha * z2  # Interpolar
        z_points.append(z_point)
    
    return torch.stack(z_points) 

# Cargar el modelo
model = m.VariationalAutoEncoder(input_dim=3922)
model.load_state_dict(torch.load('vae.pth'))
model.eval()

latent_points = []
partituras = [] 

inp_z1 = input("ingresa un vector en formato x y ambos float: ")
inp_z2 = input("ingresa otro vector en formato x y ambos float: ")

inp_z1 = inp_z1.split(' ')
inp_z2 = inp_z2.split(' ')

z1 = torch.tensor([float(inp_z1[0]), float(inp_z1[1])])
z2 = torch.tensor([float(inp_z2[0]), float(inp_z2[1])])

transition_vectors = interpolate(z1, z2, num_points=CANTIDAD_VECTORES)
print("Vectores de transición:")
print(transition_vectors)

for i in range(CANTIDAD_VECTORES):
    z = transition_vectors[i]
    with torch.no_grad():
        reconstructed_matrix = model.decode(z) 
    
    binary_output = (reconstructed_matrix > 0.5).float()
    output_matrix = binary_output.view(37, 106).cpu().numpy()

    lilypond_output = ash.matrix_to_lilypond(output_matrix)
    print(lilypond_output)

    with open('interpolation.ly', 'a') as f: 
        f.write(f'\n%partitura{i}') 
        f.write(lilypond_output)
    # Almacenar el punto latente y la partitura
    latent_points.append(z.cpu().numpy().flatten()) 
    partituras.append(f'Partitura {i}') 

# Convertir a un array numpy para graficar
latent_points = np.array(latent_points)

# Crear un DataFrame para Plotly
df = pd.DataFrame(latent_points, columns=['z1', 'z2'])
df['partitura'] = partituras

# Graficar los puntos latentes en el plano 2D usando Plotly
fig = px.scatter(df, x='z1', y='z2', text='partitura', title='Espacio Latente (2D)', labels={'z1': 'z1', 'z2': 'z2'})
fig.update_traces(textposition='top center')
fig.update_layout(hovermode='closest')
fig.show()
