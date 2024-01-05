#!/bin/bash


numero='^-?[0-9]+$' # que es un numero entero?


echo "Pon un numero "
read num

if [[ $num =~ $numero ]]; then
    resto=$num%2 # cuanto da la dicvision del nuemro


    if [[ $resto -eq 0 ]]; then
        echo "es par"
    else
            echo "es impar"
    fi
else 
    echo "no es un numero, introduce un numero"
fi            