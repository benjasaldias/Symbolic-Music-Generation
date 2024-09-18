
import random


cantidad_dados = input("¿Cuántos dados tienes? ")
for i in range (1, int(cantidad_dados) + 1):
    dado = random.randint(1,6)
    print(f"[{dado}]")