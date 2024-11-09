import sys
import re
import numpy as np
import torch

# Función para leer el archivo LilyPond
def leer_partitura_lilypond(nombre_archivo):
    with open(nombre_archivo, 'r') as file:
        lineas = file.readlines()
        lineas_filtradas = [linea for linea in lineas if '%' not in linea]
        contenido = ''
        for linea in lineas_filtradas:
            contenido += linea
        contenido = contenido.replace('\\relative', '')
        contenido = contenido.replace('\\accidentalStyle', '')
        contenido = contenido.replace('forget', '')
        contenido = contenido.replace('treble', '')
        contenido = contenido.replace('\\clef', '')
        contenido = contenido.replace('\\new', '')
        contenido = contenido.replace('Staff', '')
        contenido = contenido.replace('"right"', '')
        contenido = contenido.replace('\\relative', '')
        contenido = contenido.replace('Piano', '')
        contenido = contenido.replace('\n', '')
        contenido = contenido.replace('\\relative', '')
        contenido = contenido.replace('{', '')
        contenido = contenido.replace('}', '')
        contenido = contenido.replace('=', '')
        contenido = contenido.replace('[', '')
        contenido = contenido.replace(']', '')
        contenido = contenido.replace('\\cadenzaOn', '')
        contenido = contenido.replace('bass', '')
        contenido = separar_substrings(contenido)
        for partitura in contenido:
            partitura = partitura.replace('<<', '')
            partitura = partitura.replace('>>', '')

    return contenido

# Función para extraer las notas y duraciones de la partitura

def separar_substrings(cadena):
    subcadenas = []
    dentro_sublista = False
    subcadena_actual = ''
    
    i = 0
    while i < len(cadena):
        if cadena[i:i+2] == '<<':
            dentro_sublista = True
            subcadena_actual = ''
            i += 2  # Saltar los delimitadores '<<'
        elif cadena[i:i+2] == '>>':
            dentro_sublista = False
            subcadenas.append(subcadena_actual)
            i += 2  # Saltar los delimitadores '>>'
        elif dentro_sublista:
            subcadena_actual += cadena[i]
            i += 1
        else:
            i += 1
    return subcadenas

def extraer_notas_duraciones(contenido): 
    # Expresión regular para encontrar las notas, duraciones, y grupos de corcheas con sostenidos y bemoles
    patron = r'([a-g][is|es|,\'\d]*[,\']*\d*|\[[a-gisess\s]+\])'
    notas_duraciones = []
    for partitura in contenido:
        lista = re.findall(patron, partitura)
        notas_duraciones.append(lista)
    return notas_duraciones

# Función para convertir las notas en una matriz (piano roll)
def convertir_a_matriz(notas_duraciones):
    # Definir el rango de notas (por ejemplo, desde C3 hasta B5, incluyendo sostenidos y bemoles)
    rango_notas = [
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
    
    # Definir una matriz vacía para almacenar las notas
    tiempo_max = 37  # Asumimos un tiempo máximo para la partitura
    num_notas = len(rango_notas)
    matriz = np.zeros((tiempo_max, num_notas))
    
    # Mapeo de duraciones en ticks (por ejemplo, negra = 1 tick, corchea = 0.5 ticks, etc.)
    duracion_ticks = {'4': 1, '8': 0.5, '16': 0.25}
    
    # Variable para llevar la cuenta del tiempo
    tiempo_actual = 0
    
    # Procesar cada nota y duración
    for nota_duracion in notas_duraciones:
        # Extraer la nota y la duración (si no hay duración, se asume negra por defecto)
        nota = re.match(r'[a-g](is|es)?[,\']*', nota_duracion).group()
        duracion = re.findall(r'\d+', nota_duracion)
        duracion = duracion[0] if duracion else '16'  # Negra por defecto
            
        # Buscar el índice de la nota en el rango
        if nota in rango_notas:
            indice_nota = rango_notas.index(nota)
            matriz[int(tiempo_actual), indice_nota] = 1  # Marcar la nota en la matriz
            
        # Avanzar en el tiempo según la duración
        tiempo_actual += 1  # Default a negra (1 tick)
    
    return matriz

def convertir_tesauro(notas_duraciones):
    matrices = []
    for partitura in notas_duraciones:
        matrices.append(convertir_a_matriz(partitura))
    return matrices

# Ejemplo de uso
nombre_archivo = 'thesaurus_data.ly'  # Nombre de tu archivo LilyPond
contenido_partitura = leer_partitura_lilypond(nombre_archivo)
notas_duraciones = extraer_notas_duraciones(contenido_partitura)
matrices_tesauro = convertir_tesauro(notas_duraciones)

np.set_printoptions(threshold=np.inf)

# Convierte cada matriz NumPy a un tensor PyTorch y apílalas en el batch
torch_data = torch.stack([torch.from_numpy(matrix).unsqueeze(0) for matrix in matrices_tesauro]) 
torch_data = torch_data.float()

# Verifica el tamaño del tensor resultante
print(torch_data.shape)  # (10, 1, 37, 106)

def torcher(archivo:str):
    if archivo[-3:] != '.ly':
        raise SyntaxError("El archivo debe terminar con .ly (archivo lilypond).") 
    nombre_archivo = archivo  # Nombre de tu archivo LilyPond
    contenido_partitura = leer_partitura_lilypond(nombre_archivo)
    notas_duraciones = extraer_notas_duraciones(contenido_partitura)
    matrices_tesauro = convertir_tesauro(notas_duraciones)

    np.set_printoptions(threshold=np.inf)
    print(matrices_tesauro)

    # Convierte cada matriz NumPy a un tensor PyTorch y apílalas en el batch
    torch_data = torch.stack([torch.from_numpy(matrix).unsqueeze(0) for matrix in matrices_tesauro]) 
    torch_data = torch_data.float()