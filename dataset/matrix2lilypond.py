""" 
Format: The matrix entered will be devided into groups of 
semiquavers, dividing the score on each C note played.

Example:

[ 1   0   0          c[ cis]
  0   1   0          c[ d cis]
  1   0   0    ->    c
  0   0   1
  0   1   0
  1   0   0
]
"""
def matrix_to_lilypond(matrix, number=None):
    lilypond_lines = []
    
    # note_range
    notes = [
        'c,', 'cis,', 'd,', 'ees,', 'e,', 'f,', 'fis,', 'g,', 'aes,', 'a,', 'bes,', 'b,',
        'c', 'cis', 'd', 'ees', 'e', 'f', 'fis', 'g', 'aes', 'a', 'bes', 'b',
        "c'", "cis'", "d'", "ees'", "e'", "f'", "fis'", "g'", "aes'", "a'", "bes'", "b'", 
        "c''", "cis''", "d''", "ees''", "e''", "f''", "fis''", "g''", "aes''", "a''", "bes''", "b''",  
        "c'''", "cis'''", "d'''", "ees'''", "e'''", "f'''", "fis'''", "g'''", "aes'''", "a'''", "bes'''", "b'''", 
        "c''''"
        ]

    temp_group = []
    line = []
    for row in range(len(matrix)):
        if matrix[row][0] == 1 or matrix[row][12] == 1 or matrix[row][24] == 1 or matrix[row][36] == 1 or matrix[row][48] == 1  or matrix[row][60] == 1:
            if temp_group:
                line.append(f"[ {' '.join(temp_group)} ]")
                lilypond_lines.append(' '.join(line))
                line = []
            if matrix[row][0] == 1:
                if row != 0:
                    line.append("c,")
                else:
                    line.append("c,16")
            if matrix[row][12] == 1:
                if row != 0:
                    line.append("c")
                else:
                    line.append("c16")
            if matrix[row][24] == 1:
                if row != 0:
                    line.append("c'")
                else:
                    line.append("c'16")
            if matrix[row][36] == 1:
                line.append("c''")
            if matrix[row][48] == 1:
                line.append("c'''")
            if matrix[row][60] == 1:
                line.append("c''''")
            temp_group = []
        if row == len(matrix)-1:
            lilypond_lines.append(' '.join(line))

        for i, value in enumerate(matrix[row]):
            if value == 1:
                note_index = i % len(notes)
                note = notes[note_index]

                # Check if note is a C
                if note.startswith('c') and not note.__contains__('s'):
                    if temp_group:
                        # Append the current group if the note is a C
                        line.append(f"[ {' '.join(temp_group)} ]")
                else:
                    temp_group.append(note)  # If the note isn't a C, append it to the current group.

        # If the note found is a C, write the current temp_group into the line.
        if matrix[row][0] == 1 or matrix[row][12] == 1 or matrix[row][24] == 1 or matrix[row][36] == 1 or matrix[row][48] == 1  or matrix[row][60] == 1:
            if temp_group:
                line.append(f"[ {' '.join(temp_group)} ]")

    # Include Lilypond syntax.
    if number == None:
        lilypond_text = """
    \\new PianoStaff <<
    \\cadenzaOn
    \\new Staff = "right" {
    \\clef treble
    """ + '    ' + '\n    '.join(lilypond_lines) + """
    }
    >>
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

