import sys
import torch
import plotly.express as px
import numpy as np
import model as m
import pandas as pd  # Asegúrate de importar pandas

sys.path.append('../')
from partituras import ash

GRID_SIZE = 5  # Tamaño de la cuadrilla
Z_DIM = 2  # Dimensión del espacio latente (2D en este caso)

DEVICE = "cpu"

# Inicializamos el archivo de salida
with open('interpolation_2d.ly', 'w') as f: 
    f.write('')

# Función para interpolar 2D (cuadrilla de vectores entre 4 puntos)
def interpolate_2d(z1, z2, z3, z4, grid_size=10):
    grid = []
    for i in range(grid_size):
        alpha_vert = i / (grid_size - 1)
        row = []
        for j in range(grid_size):
            alpha_horiz = j / (grid_size - 1)
            z_top = (1 - alpha_horiz) * z1 + alpha_horiz * z2
            z_bottom = (1 - alpha_horiz) * z3 + alpha_horiz * z4
            z_point = (1 - alpha_vert) * z_top + alpha_vert * z_bottom
            row.append(z_point)
        grid.append(torch.stack(row))
    
    return torch.stack(grid)

# Cargar el modelo
model = m.VariationalAutoEncoder(input_dim=3922)
model.load_state_dict(torch.load('vae.pth'))
model.eval()

latent_points = []
partituras = []  # Lista para almacenar nombres de partituras

# Pedir los cuatro puntos z1, z2, z3, z4 al usuario
inp_z1 = input("Ingresa un vector en formato x y (ambos float): ")
inp_z2 = input("Ingresa otro vector en formato x y (ambos float): ")
inp_z3 = input("Ingresa un tercer vector en formato x y (ambos float): ")
inp_z4 = input("Ingresa el cuarto vector en formato x y (ambos float): ")

# Convertir las entradas a tensores
inp_z1 = [float(val) for val in inp_z1.split()]
inp_z2 = [float(val) for val in inp_z2.split()]
inp_z3 = [float(val) for val in inp_z3.split()]
inp_z4 = [float(val) for val in inp_z4.split()]

z1 = torch.tensor(inp_z1)
z2 = torch.tensor(inp_z2)
z3 = torch.tensor(inp_z3)
z4 = torch.tensor(inp_z4)

# Obtener la cuadrilla de vectores interpolados
transition_vectors = interpolate_2d(z1, z2, z3, z4, grid_size=GRID_SIZE)

# Generar las partituras para cada punto en la cuadrilla
for i in range(GRID_SIZE):
    for j in range(GRID_SIZE):
        z = transition_vectors[i, j].unsqueeze(0)  # Agregar dimensión batch
        with torch.no_grad():
            reconstructed_matrix = model.decode(z)
        
        # Convertir a binario
        binary_output = (reconstructed_matrix > 0.5).float()
        
        # Calcular las dimensiones para el reshape
        output_size = reconstructed_matrix.size(1)
        possible_rows = 37
        possible_cols = output_size // possible_rows

        if output_size % possible_rows == 0:
            output_matrix = binary_output.view(possible_rows, possible_cols).cpu().numpy()
        else:
            raise ValueError(f"No se puede hacer reshape con el tamaño de salida {output_size}.")

        # Convertir la matriz a formato LilyPond
        lilypond_output = ash.matrix_to_lilypond(output_matrix)
        print(lilypond_output)

        # Guardar la partitura en el archivo
        with open('interpolation_2d.ly', 'a') as f:
            f.write(f'\n%partitura{i}_{j}') 
            f.write(lilypond_output)
        
        # Almacenar el punto latente y el nombre de la partitura
        latent_points.append([z[0, 0].item(), z[0, 1].item()])  # z[0, 0] es z1 y z[0, 1] es z2
        partituras.append(f'Partitura {i}_{j}')

# Convertir los puntos latentes a un DataFrame para la visualización
latent_points = np.array(latent_points)
df = pd.DataFrame(latent_points, columns=['z1', 'z2'])
df['partitura'] = partituras

# Graficar los puntos latentes en el plano 2D usando Plotly
fig = px.scatter(df, x='z1', y='z2', text='partitura', title='Espacio Latente (2D)', labels={'z1': 'z1', 'z2': 'z2'})
fig.update_traces(textposition='top center')
fig.update_layout(hovermode='closest')
fig.show()
