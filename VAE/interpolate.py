import sys
import os
import torch
import plotly.express as px
import numpy as np
import model as m
import pandas as pd
import utils as u
sys.path.append('../')
from partituras import atxt as atxt
from partituras import ash as ash

CANTIDAD_VECTORES = 10
Z_DIM = u.Z_DIM

DEVICE = "cpu"

with open('interpolation.ly', 'w') as f: 
    f.write('')

# Función para calcular la interpolación Slerp
def slerp(z1, z2, t):
    # Normalizar los vectores
    z1 = z1 / z1.norm()
    z2 = z2 / z2.norm()
    
    # Calcular el coseno del ángulo entre z1 y z2
    dot_product = torch.dot(z1, z2)
    
    # Asegurarse de que el valor esté dentro de los límites
    dot_product = torch.clamp(dot_product, -1.0, 1.0)
    
    # Calcular el ángulo entre los vectores
    theta = torch.acos(dot_product)  # Ángulo en radianes
    
    # Calcular el seno del ángulo
    sin_theta = torch.sin(theta)

    # Si el seno es cero, significa que los vectores son paralelos
    if sin_theta < 1e-6:
        return (1 - t) * z1 + t * z2  # Interpolación lineal como fallback

    # Calcular los pesos para la interpolación Slerp
    a = torch.sin((1 - t) * theta) / sin_theta
    b = torch.sin(t * theta) / sin_theta
    
    # Devolver el vector interpolado
    return a * z1 + b * z2

# Cargar el modelo
model = m.VariationalAutoEncoder(input_dim=3922)
model.load_state_dict(torch.load('vae.pth'))
model.eval()

latent_points = []
partituras = []

# Obtener entrada de vectores z de 2 dimensiones
inp_z1 = input("Ingresa un vector de 2 dimensiones (separado por espacios): ")
inp_z2 = input("Ingresa otro vector de 2 dimensiones (separado por espacios): ")

inp_z1 = inp_z1.split(' ')
inp_z2 = inp_z2.split(' ')

# Asegurarse de que el tamaño de los vectores sea 2
if len(inp_z1) != 2 or len(inp_z2) != 2:
    raise ValueError("Ambos vectores deben tener exactamente 2 dimensiones.")

# Convertir las entradas en tensores de PyTorch
z1 = torch.tensor([float(x) for x in inp_z1]).to(DEVICE)
z2 = torch.tensor([float(x) for x in inp_z2]).to(DEVICE)

# Convertir los vectores de 2D a 12D (agregando ceros)
z1 = torch.cat((z1, torch.zeros(Z_DIM - 2, device=DEVICE)))  # Rellenar con ceros
z2 = torch.cat((z2, torch.zeros(Z_DIM - 2, device=DEVICE)))  # Rellenar con ceros

# Generar puntos Slerp
transition_vectors = []
for i in range(CANTIDAD_VECTORES):
    t = i / (CANTIDAD_VECTORES - 1)  # Proporción entre 0 y 1
    z_point = slerp(z1, z2, t)
    transition_vectors.append(z_point)

transition_vectors = torch.stack(transition_vectors)  # Apilar los vectores

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
df = pd.DataFrame(latent_points, columns=[f'z{i+1}' for i in range(Z_DIM)])
df['partitura'] = partituras

# Graficar los puntos latentes en el plano 2D usando Plotly
fig = px.scatter(df, x='z1', y='z2', text='partitura', title='Espacio Latente (Slerp)', labels={'z1': 'z1', 'z2': 'z2'})
fig.update_traces(textposition='top center')
fig.update_layout(hovermode='closest')
fig.show()
