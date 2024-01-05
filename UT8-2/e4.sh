#!/bin/bash

# nº parametros a comparar
if [[ $# -eq 1 ]]; then
      #existe?  
     if [[ -r $1 ]]; then
          echo " $1 existe y tiene permisos de lectura"
          cat "$1"
     else 
          echo " $1 existe pero no se puede leer"
     fi

else      
   echo "$1 no existe"

fi