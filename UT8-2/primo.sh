#!/bin/bash

echo "Introduce un número:"
read numero

# Casos iniciales: 0 y 1 no son primos
if [[ $numero -le 1 ]]; then
    echo "El número $numero no es primo."
    exit
fi

# Verificar si el número es primo
for ((i=2; i<numero; i++)); do
    if [[ $((numero % i)) -eq 0 ]]; then
        echo "El número $numero no es primo."
        exit
    fi
done

echo "El número $numero es primo."
