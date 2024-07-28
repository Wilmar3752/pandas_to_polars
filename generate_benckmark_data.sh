#!/bin/bash

# Nombre base del archivo
filename="data/large_dataset"
# Número de veces que se quiere duplicar el tamaño del archivo
iterations=5

for (( i=1; i<=iterations; i++ ))
do
    # Duplica el tamaño del archivo actual
    cat "${filename}_$((i-1)).csv" "${filename}_$((i-1)).csv" > "${filename}_$i.csv"
done
