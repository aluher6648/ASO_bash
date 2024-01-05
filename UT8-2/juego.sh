#!/bin/bash

num_ok=30
num_exp='^-?[0-9]+$' # Expresión regular para un número entero

echo "Pon un número de 1 a 100 y el 0 si quieres rendirte"

while : # Bucle infinito
do
    read num_usu

    if [[ $num_usu =~ $num_exp ]]; then

        if [[ $num_usu -eq 0 ]]; then
            echo "Te has rendido"
            exit

        elif [[ $num_usu -lt $num_ok ]]; then
            echo "El número que buscas es mayor"

        elif [[ $num_usu -gt $num_ok ]]; then
            echo "El número que buscas es menor"

        else
            echo "Es el número que buscabas: $num_ok"
            exit
        fi

    else
        echo "No es un número entero válido. Intenta de nuevo:"
    fi

done



done