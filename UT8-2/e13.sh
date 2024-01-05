#!/bin/bash

valor=0

read -p "dime un numero: " num

while [[ $num -ne 0 ]]; 
do 
    valor=$(($valor+$num))
    echo "la suma es $valor"
    read -p "dime otro numero:" num
done

echo "La suma es $valor "
    