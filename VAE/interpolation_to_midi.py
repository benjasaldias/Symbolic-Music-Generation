import re

# Cargar el archivo original
with open("interpolation.ly", "r") as file:
    content = file.read()

# Buscar todas las secciones de partitura
matches = re.findall(r'\\new Staff = "right" \{.*?\}', content, re.DOTALL)

# Crear la estructura base con Score y PianoStaff
combined_content = "\\version \"2.24.2\"\n\\score {\n\\new PianoStaff <<\n\\cadenzaOn\n\\new Staff = \"right\" {\n\\clef treble\n"

# Procesar cada sección de partitura
for i, match in enumerate(matches):
    # Eliminar el "c" final en todas menos la última partitura
    if i < len(matches) - 1:
        match = re.sub(r'c\s*\}', '', match)  # Elimina el "c" al final de la partitura
    # Agregar comentarios de sección para identificar cada bloque
    combined_content += f"\n%partitura{i}\n"
    combined_content += match[20:-1].strip() + "\n"  # Añadir contenido de la partitura sin el encabezado \new Staff


# Cerrar el PianoStaff y el Score
combined_content += "}\n>>\n\\midi{}\n}\n"

combined_content = re.sub('{', '', combined_content)
index = combined_content.find('"right"')
index1 = combined_content.find('score')
index2 = combined_content.find('midi')

print('indexes: ', index, index1, index2)
combined_content = combined_content[:index+8] + '{' + combined_content[index+8:]
combined_content = combined_content[:index1+6] + '{' + combined_content[index1+6:]
combined_content = combined_content[:index2+4] + '{' + combined_content[index2+4:]

# Guardar el archivo transformado
with open("partitura_unificada.ly", "w") as file:
    file.write(combined_content)

print("Partitura unificada en el formato requerido y archivo MIDI añadido correctamente.")
