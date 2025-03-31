import sys
sys.path.append('../')
import VAE.utils as u

def matrix_to_lilypond(matrix, number=None):
    lilypond_lines = []
    
    # List of possible notes
    notes = u.NOTE_RANGE_LIST

    # 🔹 Find the first active note in the matrix (which will be the scale's tonic)
    first_active_note_index = None
    for row in matrix:
        for i, value in enumerate(row):
            if value == 1:
                first_active_note_index = i
                break
        if first_active_note_index is not None:
            break
    
    if first_active_note_index is None:
        raise ValueError("Matrix contains no active notes.")

    tonic_note = notes[first_active_note_index % len(notes)]  # Get tonic from note list

    temp_group = []
    line = []
    
    for row in range(len(matrix)):
        # 🔹 Instead of hardcoding "C" positions, check if the current row contains the tonic
        if matrix[row][first_active_note_index] == 1:
            if temp_group:
                line.append(f"[ {' '.join(temp_group)} ]")
                lilypond_lines.append(' '.join(line))
                line = []
            
            note = notes[first_active_note_index % len(notes)]
            if row != 0:
                line.append(note)
            else:
                line.append(note + "16")  # Add duration to the first note
            
            temp_group = []
        
        if row == len(matrix) - 1:
            lilypond_lines.append(' '.join(line))

        for i, value in enumerate(matrix[row]):
            if value == 1:
                note = notes[i % len(notes)]

                # 🔹 If this is the tonic note, segment the group
                if i == first_active_note_index:
                    if temp_group:
                        line.append(f"[ {' '.join(temp_group)} ]")
                else:
                    temp_group.append(note)

        if matrix[row][first_active_note_index] == 1 and temp_group:
            line.append(f"[ {' '.join(temp_group)} ]")


    # Include Lilypond syntax.
    if number == None:
        lilypond_text = """
    \\version "2.22.2"
    \\header {
    title = "Sample"
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
    \\clef treble
    """ + '    ' + '\n    '.join(lilypond_lines) + """
    }
    >>
    \\layout {
        indent = 0\\mm
        line-width = 190\\mm
        \\override Stem.transparent = ##t
    }    
    }
    
    """
        return lilypond_text
    else:
        lilypond_text = """
    \\new PianoStaff <<
    \\cadenzaOn
    \\new Staff = "right" {
    """ + "\mark \markup \column" + "{" +  f""" "Scale {number}" """ + "}" """
    \\clef treble
    """ + '\n    '.join(lilypond_lines) + """
    }
    >>
    """
        return lilypond_text    

