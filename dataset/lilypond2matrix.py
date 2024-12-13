import re
import os
import numpy as np
import torch

# Read and filter lilypond file
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

# Converts the processed data into a binary matrix (Piano Roll).
def sheet_to_matrix(notes):
    # Define range of notes
    note_range = [
        'c,', 'cis,', 'des,', 'd,', 'dis,', 'ees,', 'e,', 'eis,',
        "fes,", 'f,', 'fis,', 'ges,', 'g,', 'gis,', 'aes,', 'a,', 
        'ais,', 'bes,', 'b,', 'bis,', 'ces,',
        'c', 'cis', 'des', 'd', 'dis', 'ees', 'e', 'eis',
        "fes", 'f', 'fis', 'ges', 'g', 'gis', 'aes', 'a', 
        'ais', 'bes', 'b', 'bis', 'ces',
        "c'", "cis'", "des'", "d'", "dis'", "ees'", "e'", "eis'",
        "fes'", "f'", "fis'", "ges'", "g'", "gis'", "aes'", "a'", 
        "ais'", "bes'", "b'", "bis'", "ces'",
        "c''", "cis''", "des''", "d''", "dis''", "ees''", "e''", "eis''",
        "fes''", "f''", "fis''", "ges''", "g''", "gis''", "aes''", "a''", 
        "ais''", "bes''", "b''", "bis''", "ces''", 
        "c'''", "cis'''", "des'''", "d'''", "dis'''", "ees'''", "e'''", "eis'''",
        "fes'''", "f'''", "fis'''", "ges'''", "g'''", "gis'''", "aes'''", "a'''",
        "ais'''", "bes'''", "b'''", "bis'''", "ces'''", "c''''"
        ]
    
    # Define 0s matrix of set length
    max_length = 37  # Max length
    note_amount = len(note_range)
    matrix = np.zeros((max_length, note_amount))
    
    # Process each note and its duration
    current_tick = 0 
    for note in notes:
        # Extract note and duration
        symbol = re.match(r'[a-g](is|es)?[,\']*', note).group()
        duration = re.findall(r'\d+', note)
        duration = duration[0] if duration else '16'  # default: semiquaver
            
        # Search note index in note_range
        if symbol in note_range:
            note_index = note_range.index(symbol)
            matrix[int(current_tick), note_index] = 1 # 1 in matrix for note found
            
        current_tick += 1

    return matrix

def thesaurus_to_matrix(notes):
    matrixes = []
    for scale in notes:
        matrixes.append(sheet_to_matrix(scale))
    return matrixes

def torcher(file:str):
    if file[-3:] != '.ly':
        raise SyntaxError("El archivo debe terminar con .ly (archivo lilypond).") 
    file_name = file  # Nombre de tu archivo LilyPond
    content = read_lilypond_sheet(file_name)
    notes = get_notes(content)
    file_matrixes = thesaurus_to_matrix(notes)

    np.set_printoptions(threshold=np.inf)

    # Convierte cada matriz NumPy a un tensor PyTorch y apílalas en el batch
    torch_data = torch.stack([torch.from_numpy(matrix).unsqueeze(0) for matrix in file_matrixes]) 
    torch_data = torch_data.float()

    # Verifica el tamaño del tensor resultante
    print(torch_data.shape)  # (10, 1, 37, 106)
    return torch_data

if __name__ == '__main__':
    torcher('thesaurus_data.ly')
else:
    # Obtener la ruta absoluta del directorio actual
    current_dir = os.path.dirname(os.path.abspath(__file__))
    data_path = os.path.join(current_dir, "thesaurus_data.ly")

    torch_data = torcher(data_path)