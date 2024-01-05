#!/bin/bash

# Verificar si el número de argumentos es correcto
if [ "$#" -lt 4 ] || [ "$#" -gt 5 ]; then
    echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
    exit 1
fi

opcion=$1
nombre=$2
apellido1=$3
apellido2=$4
grupo=${5:-""}

# Generar el identificativo del usuario
id="alu${apellido1:0:2}${apellido2:0:2}${nombre:0:1}"


case $opcion in
    alta)
        # Crear grupo si no se especifica uno
        if [ -z "$grupo" ]; then
            grupo=$id
            sudo groupadd "$grupo"
        fi

        # Crear usuario
        sudo useradd -m -g "$grupo" "$id"
        echo "Usuario $id creado con éxito."
        ;;

    baja)
        # Eliminar usuario
        sudo userdel -r "$id"
        echo "Usuario $id eliminado con éxito."
        ;;

    *)
        echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
        exit 1
        ;;
esac
