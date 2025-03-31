import os
import re
import sys
import torch
import numpy
import mahotas
from scipy.spatial.distance import euclidean

### DATA ###

# training
NOTE_RANGE_LIST = [ 'a,,', 'b,,',
        'c,', 'cis,', 'd,', 'ees,', 'e,', 'f,', 'fis,', 'g,', 'aes,', 'a,', 'bes,', 'b,',
        'c', 'cis', 'd', 'ees', 'e', 'f', 'fis', 'g', 'aes', 'a', 'bes', 'b',
        "c'", "cis'", "d'", "ees'", "e'", "f'", "fis'", "g'", "aes'", "a'", "bes'", "b'", 
        "c''", "cis''", "d''", "ees''", "e''", "f''", "fis''", "g''", "aes''", "a''", "bes''", "b''",  
        "c'''", "cis'''", "d'''", "ees'''", "e'''", "f'''", "fis'''", "g'''", "aes'''", "a'''", "bes'''", "b'''", 
        "c''''"
        ]
NUM_ROWS = 37
NOTE_RANGE = len(NOTE_RANGE_LIST)
INPUT_DIM = NUM_ROWS*NOTE_RANGE
H_DIM = 300 # best: 300
Z_DIM = 12 # best: 12
BATCH_SIZE = 16 # best: 16
NUM_EPOCHS = 2000 # best: 1500
LR_RATE = 3e-5 # best: 3e-5
ALPHA = 1 # best: 1
BETA = 0.8 # best: 0.8

AUGMENTATION_ITER = 2


# interpolation
INTERPOLATION_STEPS = 10

# 2d interpolation
GRID_SIZE = 5


### GLOBAL FUNCTIONS ###
def get_binary(reconstructed, numpy=True):
    
    reconstructed = reconstructed.view(NUM_ROWS, NOTE_RANGE)

    # Crear una matriz de ceros del mismo tamaño
    binary_output = torch.zeros_like(reconstructed)

    # Obtener el índice del valor máximo en cada fila
    max_indices = torch.argmax(reconstructed, dim=1)

    # Usar los índices para colocar 1 en el valor máximo de cada fila
    binary_output[torch.arange(reconstructed.size(0)), max_indices] = 1

    binary_generated = binary_output

    if numpy == True:
        binary_generated = binary_output.cpu().numpy()

    return binary_generated

# Reparameterization trick
def reparameterize(mu, logvar):
    std = logvar # Convert logvar to standard deviation
    eps = torch.randn_like(std)   # Sample from N(0, 1)
    z = mu + eps * std            # Sample from N(mu, sigma^2)
    return z

# Read and filter lilypond file
def read_lilypond_comments(file_name):
    numbers = []
    with open(file_name, 'r') as file:
        lines = file.readlines()
        filtered_lines = [line for line in lines if '%' in line]
        content = ''
        for line in filtered_lines:
            content = line.strip()
            content = content.strip('.')
            content = content.split(' ')
            if len(content) > 1:
                if content[1][:-1].isnumeric():
                    numbers.append(content[1][:-1])
    return numbers

# empty json file
def empty_json(file_name):
    open(file_name, 'w').close()
    return

### INTERPOLATION FUNCTIONS ###
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

def lerp(z1, z2, t):
    """Linear interpolation between two vectors."""
    return (1 - t) * z1 + t * z2

def to_midi(filename):
    if filename.endswith('2d'):
        folder = '2d'
    else:
        folder = '1d'
    # Load and read original LilyPond file
    content = ''
    with open(f"results/{folder}/{filename}.ly", "r") as file:
        lines = file.readlines()
        for line in lines:
            print(line)
            # Skip labeling (unnecesary for midi and causes RegEx errors)
            if "mark" not in line:
                content += line

    # Find all sections wanted in the file's content
    matches = re.findall(r'\\new Staff = "right" \{.*?\}', content, re.DOTALL)

    # Write the base structure of the score
    combined_content = """
    \\version "2.22.2"
    \\header {
    title = "Interpolation"
    composer = "Symbolic Music Generation"
    }

    \\score {
    <<
        \\cadenzaOn
        \\override Beam.breakable = ##t
        \\accidentalStyle Score.forget
        \\override Score.TextScript.padding = #2
        \\override Stem.transparent = ##t
    {
    """
    diagonal_1 = combined_content
    diagonal_2 = combined_content

    scale_numbers = []
    for i in range(GRID_SIZE):
        for j in range(GRID_SIZE):
            scale_numbers.append([i, j])

    # Add each section to the score
    scale_num_1d = 0
    for i, match in enumerate(matches):
        initial_length = len(combined_content)

        if filename.endswith('2d'):
            combined_content += f"\n%Scale {scale_numbers[i][0]}_{scale_numbers[i][1]}"
            if i != 0:
                combined_content += """
        ^\\markup \\bold """  + "{" f""" "step {scale_numbers[i][0]}_{scale_numbers[i][1]}" """ + "}"
            combined_content += (match[20:-1].strip())[1:]
            if i == 0:
                combined_content = combined_content[:(combined_content.index('clef treble') + len('clef treble'))] + """
        ^\\markup \\bold """  + "{" f""" "step {scale_numbers[i][0]}_{scale_numbers[i][1]}" """ + "}" + combined_content[(combined_content.index('clef treble') + len('clef treble')):]
           
        
        else:
            combined_content += f"\n%scale {scale_num_1d}"
            if i != 0:
                combined_content += """
    ^\\markup \\bold """  + "{" f""" "step {scale_num_1d}" """ + "}"
            combined_content += (match[20:-1].strip())[1:]
            if i == 0:
                combined_content = combined_content[:(combined_content.index('clef treble') + len('clef treble'))] + """
        ^\\markup \\bold """  + "{" f""" "step {scale_num_1d}" """ + "}" + combined_content[(combined_content.index('clef treble') + len('clef treble')):]
            scale_num_1d += 1

        combined_content += f"""    r8
    \\bar ""
    \\break
        """
        if i%6 == 0:
            diagonal_1 += combined_content[initial_length:]
        elif i%4 == 0 and i != 0:
            diagonal_2 += combined_content[initial_length:]

    # Close the Staff and Score, adding the "midi{} line"
    combined_content += """
    }
    >>
    \\layout {
        indent = 0\\mm
        line-width = 190\\mm
        \\override Stem.transparent = ##t
    }
    \\midi{ }
    
    }
    """
    diagonal_1 += """
    }
    >>
    \\layout {
        indent = 0\\mm
        line-width = 190\\mm
        \\override Stem.transparent = ##t
    }
    \\midi{ }
    
    }
    """
    diagonal_2 += """
    }
    >>
    \\layout {
        indent = 0\\mm
        line-width = 190\\mm
        \\override Stem.transparent = ##t
    }
    \\midi{ }
    
    }
    """

    # Save the new file as FILENAME.ly
    if filename.endswith('2d'):
        # Save the diagonals for 2d interpolation
        with open(f"results/2d/diagonal_1.ly", "w") as file:
            file.write(diagonal_1)

        with open(f"results/2d/diagonal_2.ly", "w") as file:
            file.write(diagonal_2)

    with open(f"results/{folder}/{filename}.ly", "w") as file:
        file.write(combined_content)



    print("Saved score as MIDI file correctly in the Interpolation/results folder.")

def calculate_lbp_similarity(matrix1, matrix2, radius=6, points=6):
    # Calculates LBP for matrix 1 and 2
    lbp1 = mahotas.features.lbp(matrix1, radius, points)
    lbp2 = mahotas.features.lbp(matrix2, radius, points)

    # Euclidian distance between LBPs
    distance = euclidean(lbp1, lbp2)
    return distance