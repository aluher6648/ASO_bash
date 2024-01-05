#!/bin/bash
# Se le pasan como parámetros dos números enteros y el programa me debe decir qué número es mayor

echo "Pon el primer numero entero"
read num1
echo "pon el segundo numero entero"
read num2


if  [ "$num1" -gt "$num2" ] ; then
  echo "el numero $num1 es mayor"
elif [ "$num2" -gt "$num1" ]; then
  echo "el numero $num2 es  mayor"
else 
  echo "Son iguales"

fi  