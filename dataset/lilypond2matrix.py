import re
import os
import sys
import re
import json
import numpy as np
import torch
sys.path.append('../')
import VAE.utils as u

def read_lilypond_sheet(file_name):
    with open(file_name, 'r') as file:
        lines = file.readlines()
        filtered_lines = [line for line in lines if '%' not in line]
        content = ''
        for line in filtered_lines:
            content += line
        content = content.replace('\\relative', '')
        content = content.replace('\\accidentalStyle', '')
        content = content.replace('forget', '')
        content = content.replace('treble', '')
        content = content.replace('\\clef', '')
        content = content.replace('\\new', '')
        content = content.replace('Staff', '')
        content = content.replace('"right"', '')
        content = content.replace('\\relative', '')
        content = content.replace('Piano', '')
        content = content.replace('\n', '')
        content = content.replace('\\relative', '')
        content = content.replace('{', '')
        content = content.replace('}', '')
        content = content.replace('=', '')
        content = content.replace('[', '')
        content = content.replace(']', '')
        content = content.replace('\\cadenzaOn', '')
        content = content.replace('bass', '')
        content = separate_scales(content)
        for scale in content:
            scale = scale.replace('<<', '')
            scale = scale.replace('>>', '')

    return content

# Separates scales into a list
def separate_scales(content):
    substrings = []
    in_substring = False
    current_substring = ''
    
    i = 0
    while i < len(content):
        if content[i:i+2] == '<<':
            in_substring = True
            current_substring = ''
            i += 2  # Skip '<<'
        elif content[i:i+2] == '>>':
            in_substring = False
            substrings.append(current_substring)
            i += 2  # Skip '>>'
        elif in_substring:
            current_substring += content[i]
            i += 1
        else:
            i += 1
    return substrings

def get_notes(content): 
    # RegEx to find notes, note durations, etc.
    pattern = r'([a-g][is|es|,\'\d]*[,\']*\d*|\[[a-gisess\s]+\])'
    notes = []
    for scale in content:
        matches = re.findall(pattern, scale)
        notes.append(matches)
    return notes


def scale_to_interval_vector(notes_list):
    """Convierte notas a [Nota_Inicial, Int_1, Int_2... Int_36]"""
    
    scales = []
    for scale in notes_list:
        indices = []
        for n in scale:
            n_limpia = re.sub(r'\d+', '', n)
            if n_limpia in u.NOTE_RANGE_LIST:
                indices.append(u.NOTE_RANGE_LIST.index(n_limpia))
            else:
                print("sucio; ", n_limpia)
        # print(len(indices))
        vector = np.zeros(u.INPUT_DIM)
        vector[0] = indices[0]
        real_length = len(indices)
        for i in range(1, min(real_length, u.INPUT_DIM)):
            vector[i] = indices[i] - indices[i-1]
        scales.append([vector, real_length])
            
    return scales

def torcher(file, augmentation_iter=1, output_json="torch_data.json"):
    content = read_lilypond_sheet(file)
    all_notes = get_notes(content)
    scales = scale_to_interval_vector(all_notes)
    
    print(scales)
    for scale in scales:
        vector = scale[0]
        length = scale[1]
        data_entry = {
            "x": vector.tolist(),
            "length": length / u.INPUT_DIM # Normalización entre 0 y 1
        }
    
    with open(output_json, "w") as f:
        json.dump([data_entry], f)
    
    print(f"Datos guardados en {output_json}. Nuevo INPUT_DIM: {u.INPUT_DIM}")
    return vector, length

def process_full_thesaurus(file_path):
    content = read_lilypond_sheet(file_path)
    all_notes = get_notes(content)
    scales = scale_to_interval_vector(all_notes)
    
    dataset = []
    for scale in scales:
        if len(scale) > 0:
            vector = scale[0]
            length = scale[1]
            dataset.append({
                "x": vector.tolist(),
                "length": length / u.INPUT_DIM
            })
    
    with open("torch_data.json", "w") as f:
        json.dump(dataset, f)
    

process_full_thesaurus(u.DATASET_LY_FILE)
# torcher("thesaurus_data.ly")