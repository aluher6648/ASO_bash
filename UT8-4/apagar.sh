#!/bin/bash

mostrar_opciones() {
    echo "Uso: $0 [opciones]"
    echo "opciones:"
    echo "   ahora                Reiniciar el equipo ahora"
    echo "   N                    Reiniciar el equipo en N minutos"
}

if [ $# -eq 0 ]; then
    mostrar_opciones
elif [ $1 == "ahora" ]; then
    sudo shutdown -r now
else
    N=$1
    echo "El equipo se reiniciará en $N minutos."
    sudo shutdown -r +$N
fi