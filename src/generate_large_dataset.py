import csv
import random

# Estimación de filas y columnas para alcanzar aproximadamente 1GB
rows = 1000000 + 1
columns = 52

def generate_random_row(col):
    """Genera una fila con valores aleatorios."""
    row_data = []
    for _ in range(col):
        row_data.append(str(random.random()))  # Utiliza str para evitar problemas de escritura
    return row_data

if __name__ == '__main__':
    filename = 'data/large_dataset_0.csv'
    with open(filename, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        for _ in range(rows):
            writer.writerow(generate_random_row(columns))
