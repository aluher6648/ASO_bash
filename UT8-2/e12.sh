#!/bin/bash

# Funciones
function suma() {
    echo $(($num1 + $num2))
}

function resta() {
    echo $(($num1 - $num2))
}

function divide() {
    if [ $2 -eq 0 ]; then
        echo "Error: División por cero"
    else
        echo $(($num1 / $num2))
    fi
}

function multiplica() {
    echo $(($num1 * $num2))
}

# Menú
function menu() {
    echo "-------------- MENU ------------------"
    echo "1 - Sumar"
    echo "2 - Restar"
    echo "3 - Dividir"
    echo "4 - Multiplicar"
    echo "0 - Salir"
    read -p "Elige una opción: " opcion
}

# Inicializar opción
opcion=5

# Bucle del menú
while [[ $opcion -ne 0 ]]; do
    menu

    if [[ $opcion -gt 4 ]]; then
        echo "Solo números del 0 al 4"
    elif [[ $opcion -ge 1 && $opcion -le 4 ]]; then
        read -p "Introduce el primer número: " num1
        read -p "Introduce el segundo número: " num2

        case $opcion in
            1) suma ;;
            2) resta ;;
            3) divide ;;
            4) multiplica ;;
        esac
    fi
done