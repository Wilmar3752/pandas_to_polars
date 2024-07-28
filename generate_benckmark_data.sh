#!/bin/bash

# Ruta al script Python que genera el archivo large_dataset.csv
python_script="src/generate_large_dataset.py"

# Ejecuta el script Python para generar el archivo large_dataset.csv
echo "Generando el archivo large_dataset.csv..."
python "$python_script"

# Nombre base del archivo
filename="data/large_dataset"
# Número de veces que se quiere duplicar el tamaño del archivo
iterations=5

for (( i=1; i<=iterations; i++ ))
do
    # Duplica el tamaño del archivo actual
    cat "${filename}_$((i-1)).csv" "${filename}_$((i-1)).csv" > "${filename}_$i.csv"
done
