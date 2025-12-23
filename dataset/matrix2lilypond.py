import sys
sys.path.append('../')
import numpy as np
import VAE.utils as u

def intervals_to_lilypond(interval_vector, normalized_length):
    notes = u.NOTE_RANGE_LIST
    # Des-normalizar el largo (ej: 0.5 * 37 = 18.5 -> 18 notas)
    real_length = int(round(normalized_length * 37))
    real_length = max(1, min(real_length, 37))
    
    # Reconstrucción de la melodía
    current_idx = int(round(interval_vector[0])) # Nota inicial
    current_idx = max(0, min(current_idx, len(notes)-1))
    
    result_notes = [notes[current_idx]]
    
    for i in range(1, real_length):
        interval = int(round(interval_vector[i]))
        current_idx += interval
        # Asegurar que no se salga de los límites de NOTE_RANGE_LIST
        current_idx = max(0, min(current_idx, len(notes)-1))
        result_notes.append(notes[current_idx])

    # Formateo Lilypond
    notes_str = " ".join(result_notes)
    
    lily_template = f"""
\\version "2.22.2"
\\score {{
    \\new Staff {{
        \\clef treble
        \\cadenzaOn
        {notes_str}
        \\bar "|."
    }}
    \\layout {{ }}
}}
"""
    return lily_template