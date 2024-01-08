#!/bin/bash

# Verificar si se ha pasado un nombre de directorio como parámetro
if [[ $# -ne 1 ]]; then
    echo "Error: Debes proporcionar el nombre de un directorio."
    echo "Uso: $0 [nombre_del_directorio]"
    exit 1
fi

directorio=$1

# Verificar si el directorio existe y es un directorio
if [[ -d "$directorio" ]]; then
    # Contar archivos y subdirectorios
    num_archivos=$(find "$directorio" -maxdepth 1 -type f | wc -l)
    num_directorios=$(find "$directorio" -maxdepth 1 -type d | wc -l)

    # Ajustar el número de subdirectorios para excluir el directorio padre
    num_directorios=$((num_directorios - 1))

    echo "El directorio $directorio contiene:"
    echo "$num_archivos archivos"
    echo "$num_directorios subdirectorios"
else
    echo "Error: El directorio $directorio no existe o no es un directorio."
fi
