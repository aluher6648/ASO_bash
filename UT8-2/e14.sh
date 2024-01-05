#!/bin/bash
#no entendi este ejercicio 100% chatgpt

# Verificar que se ha proporcionado exactamente un argumento
if [ "$#" -ne 1 ]; then
    echo "Uso: $0 <ruta-del-directorio>"
    exit 1
fi

# Asignar el argumento a una variable
directorio=$1

# Verificar si el directorio existe
if [ ! -d "$directorio" ]; then
    echo "Error: El directorio no existe"
    exit 1
fi

# Contador de entradas
contador=0

echo "Listado de entradas en $directorio:"

# Bucle sobre las entradas del directorio
for entrada in "$directorio"/*; do
    # Ignorar si no hay archivos/directorios
    [ -e "$entrada" ] || continue

    # Incrementar el contador
    contador=$((contador + 1))

    # Verificar si es un archivo o directorio
    if [ -d "$entrada" ]; then
        echo "[Directorio] $entrada"
    elif [ -f "$entrada" ]; then
        echo "[Archivo]   $entrada"
    fi
done

# Mostrar el número total de entradas
echo "Número total de entradas: $contador"
