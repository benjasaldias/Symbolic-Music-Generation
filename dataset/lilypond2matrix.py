import re
import os
import sys
import numpy as np
import torch
import random

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
def sheet_to_matrix(notes, max_length):
    # Define range of notes
    note_range = [
        'c,', 'cis,', 'd,', 'ees,', 'e,', 'f,', 'fis,', 'g,', 'aes,', 'a,', 'bes,', 'b,',
        'c', 'cis', 'd', 'ees', 'e', 'f', 'fis', 'g', 'aes', 'a', 'bes', 'b',
        "c'", "cis'", "d'", "ees'", "e'", "f'", "fis'", "g'", "aes'", "a'", "bes'", "b'", 
        "c''", "cis''", "d''", "ees''", "e''", "f''", "fis''", "g''", "aes''", "a''", "bes''", "b''",  
        "c'''", "cis'''", "d'''", "ees'''", "e'''", "f'''", "fis'''", "g'''", "aes'''", "a'''", "bes'''", "b'''", 
        "c''''"
        ]
    
    # Initialize a zero matrix with dynamic length
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
            if current_tick < max_length:
                matrix[current_tick, note_index] = 1  # Set 1 in matrix for note found
            
        current_tick += 1

    return matrix

def thesaurus_to_matrix(notes):
    # Find the maximum length of all scales
    max_length = max(len(scale) for scale in notes)
    
    # Convert each scale to a binary matrix
    matrixes = []
    for scale in notes:
        matrixes.append(sheet_to_matrix(scale, max_length))
    return matrixes

def augment_data(matrix):
    """Applies data augmentation to the piano roll matrix."""
    
    # Convert PyTorch tensor to NumPy for easier manipulation
    if isinstance(matrix, torch.Tensor):
        matrix = matrix.numpy()
    
    # Random transposition (shift by -3 to +3 semitones)
    shift = random.randint(-3, 3)
    matrix = np.roll(matrix, shift, axis=1)  # Shift columns (pitches)
    if shift > 0:
        matrix[:, :shift] = 0  # Remove out-of-range notes
    elif shift < 0:
        matrix[:, shift:] = 0  # Remove out-of-range notes
    
    # Convert back to PyTorch tensor
    return torch.tensor(matrix, dtype=torch.float32)


def torcher(file: str, apply_augmentation = True):
    if file[-3:] != '.ly':
        raise SyntaxError("File must end with .ly (archivo lilypond).") 
    file_name = file
    content = read_lilypond_sheet(file_name)
    notes = get_notes(content)
    file_matrixes = thesaurus_to_matrix(notes)
    augmented_data = []
    if apply_augmentation:
        for matrix in file_matrixes:
            augmented_data.append(augment_data(matrix=matrix))
    file_matrixes = file_matrixes + augmented_data       

    np.set_printoptions(threshold=np.inf)

    # Convert NumPy matrixes to Torch tensors and stack them
    torch_data = torch.stack([
        torch.from_numpy(matrix.numpy() if isinstance(matrix, torch.Tensor) else matrix).unsqueeze(0)
        for matrix in file_matrixes
    ])
    torch_data = torch_data.float()

    # Print shape for debugging
    print(torch_data.shape)  # format: (scale_amount, 1, max_length, note_range_length)
    return torch_data

if __name__ == '__main__':
    if len(sys.argv) > 1:    
        torcher(sys.argv[1])
    else: 
        torcher('thesaurus_data.ly')
else:
    # Get data file route
    current_dir = os.path.dirname(os.path.abspath(__file__))
    data_path = os.path.join(current_dir, "thesaurus_data.ly")

    torch_data = torcher(data_path)