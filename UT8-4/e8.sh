#!/bin/bash
# anadir a cron esta linea */2 * * * * /ruta/al/script/e8.sh

echo "$(date)" >> /tmp/usuarios
echo "Nº de usuarios diferentesconectados: $(who | cut -d' ' -f1 | sort | uniq | wc -l)" >> /tmp/usuarios
