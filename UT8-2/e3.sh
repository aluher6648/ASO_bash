#!/bin/bash

# nº parametros a comparar
if [[ $# -eq 1 ]]; then
    #existe?
    if [[ -e $1 ]]; then
        #si existe , ¿es directorio?
        if [[ -d $1 ]]; then
            echo "$1 es un directorio."
        #si es directorio , es fichero regular?
        elif [[ -f $1 ]]; then
            echo "$1 es un fichero regular."
        else
            echo "$1 existe pero no es ni un directorio ni un fichero regular."
        fi
    else 
        echo "$1 no existe."
    fi
else 
    echo "introduce solo un parámetro."
fi
