import os
import sys
import torch
import numpy as np
import matplotlib.pyplot as plt
sys.path.append('../')
import utils as u
import Model.model as m
sys.path.append('../../')
from dataset import matrix2lilypond

# Configuración
CANTIDAD_TESTS = 10
DEVICE = "cpu"
INPUT_DIM = u.INPUT_DIM
Z_DIM = u.Z_DIM

output_dir = "tests"
os.makedirs(output_dir, exist_ok=True)

# Cargar el modelo
model = m.VariationalAutoEncoder(input_dim=INPUT_DIM)
model.load_state_dict(torch.load('vae.pth'))
model.eval()

# Do central como base (índice 14 usualmente en tu NOTE_RANGE_LIST)
BASE_PITCH_INDEX = 14 

for i in range(CANTIDAD_TESTS):
    z = 1.5 * torch.randn(1, Z_DIM).to(DEVICE)

    with torch.no_grad():
        # Generar vector de intervalos
        generated_intervals = model.decode(z).cpu().numpy().squeeze()

    # Post-proceso: redondear a intervalos enteros
    intervals = np.round(generated_intervals).astype(int)

    # Reconstruir notas (Pitch = cumsum de intervalos)
    current_pitch = BASE_PITCH_INDEX
    pitches = [current_pitch]
    for step in intervals[1:]: # El primer elemento suele ser la tónica o 0
        current_pitch += step
        # Clamp al rango de notas disponibles
        current_pitch = max(0, min(current_pitch, len(u.NOTE_RANGE_LIST) - 1))
        pitches.append(current_pitch)

    # Convertir índices a nombres de notas para LilyPond
    note_names = [u.NOTE_RANGE_LIST[p] for p in pitches]
    notes_str = " ".join(note_names)
    
    lilypond_output = f'{{ \\clef treble \\cadenzaOn {notes_str} \\bar "|." }}'

    # Guardar archivo
    file_path = os.path.join(output_dir, f'scale_{i}.ly')
    with open(file_path, 'w') as f:
        f.write(f'% z vector: {z.tolist()}\n')
        f.write(lilypond_output)

    # Visualizar contorno melódico
    plt.figure(figsize=(10, 4))
    plt.plot(pitches, 'o-')
    plt.title(f"Contorno Melódico (Generación {i})")
    plt.ylabel("Pitch Index")
    plt.grid(True)
    plt.show()