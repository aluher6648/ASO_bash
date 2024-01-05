#!/bin/bash

# Buscar archivos con permisos de escritura para cualquier usuario
find / -perm -002 -type f 2>/dev/null > archivos_peligrosos.txt

echo "Lista de archivos peligrosos guardada en archivos_peligrosos.txt"
