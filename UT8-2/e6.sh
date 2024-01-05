#!/bin/bash

ExpresionRE='^-?[0-9]+$'

if [[ $# -ne 1 ]]; then
    echo "falta el numero , pon uno"
    exit 1
fi

if ! [[ $1 =~ $ExpresionRE  ]]; then
    echo "el parametro debe ser un nuemro positivo y entero"
    exit 1
fi

numero=$1

echo "Tabla del $numero:"
for i in {1..10}; do
    echo "$numero x $i = $((numero * i))"
done
