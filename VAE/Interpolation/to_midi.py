import re
import sys
sys.path.append('../')
import utils as u

# Load and read original LilyPond file
content = ''
with open(f"{sys.argv[1]}.ly", "r") as file:
    lines = file.readlines()
    for line in lines:
        print(line)
        # Skip labeling (unnecesary for midi and causes RegEx errors)
        if "mark" not in line:
            content += line

# Find all sections wanted in the file's content
matches = re.findall(r'\\new Staff = "right" \{.*?\}', content, re.DOTALL)

# Write the base structure of the score
combined_content = "\\version \"2.22.2\"\n\\score {\n\\new PianoStaff <<\n\\cadenzaOn\n\\new Staff = \"right\" {\n\\clef treble\n"

scale_numbers = []
for i in range(u.GRID_SIZE):
    for j in range(u.GRID_SIZE):
        scale_numbers.append([i, j])

for i, match in enumerate(matches):
    # Eliminate the last "c" of each scale to "link" them.
    if i < len(matches) - 1:
        match = re.sub(r'c\s*\}', '', match) 
    # Add comments that indicate the scale number
    if sys.argv[1].endswith('2d'):
        combined_content += f"\n%scale {scale_numbers[i][0]}_{scale_numbers[i][1]}"
        combined_content += match[20:-1].strip() + "\n"         
    else:
        combined_content += f"\n%scale {i}"
        combined_content += match[20:-1].strip() + "\n" 


# Close the Staff and Score, adding the "midi{} line"
combined_content += "}\n>>\n\\midi{}\n}\n"

# Insert all the eliminated brackets {}
combined_content = re.sub('{', '', combined_content)
index = combined_content.find('"right"')
index1 = combined_content.find('score')
index2 = combined_content.find('midi')

print('indexes: ', index, index1, index2)
combined_content = combined_content[:index+8] + '{' + combined_content[index+8:]
combined_content = combined_content[:index1+6] + '{' + combined_content[index1+6:]
combined_content = combined_content[:index2+6] + '{' + combined_content[index2+6:]

# Save the new file as midi_FILENAME.ly
with open(f"midi_{sys.argv[1]}.ly", "w") as file:
    file.write(combined_content)

print("Partitura unificada en el formato requerido y archivo MIDI añadido correctamente.")
