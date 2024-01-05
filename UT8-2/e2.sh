#!/bin/bash

# que es un numero entero?
numero='^-?[0-9]+$'

# hay 2 parametros?
if [[ $# -ne 2 ]]; then
    echo "Error: Debes introducir 2 parámetros."
    echo " ejecuta el script asi: ./e2 [numero] [numero]"
    exit 1
fi

# el primer parrametro es numero?
if ! [[ $1 =~ $numero ]]; then
    echo "Error: el primer parámetro no es un número entero válido."
    exit 1
fi

echo "Primer parámetro es $1"

# el segundo parametro es nuemro??
if ! [[ $2 =~ $numero ]]; then
    echo "Error: el segundo parametro no es un número entero válido."
    exit 1
fi

echo "Segundo parámetro es $2"

# Realizar la suma
echo "$1 + $2 = $(($1 + $2))"