#!/bin/bash
# 0 1 * * * /ruta/e10.sh

FECHA=$(date +%Y%m%d_%H%M%S)
FECHA_SIMPLE=$(date +%Y%m%d)
DIA_SEMANA=$(date +%u) # domingo es 7

# Crear carpeta de copia de seguridad si no existe
mkdir -p /copia_seguridad/completa
mkdir -p /copia_seguridad_incremental/$FECHA_SIMPLE

# Crear el fichero fecha.txt
echo $FECHA > /copia_seguridad/fecha.txt

# Si es domingo, realizar copia completa
if [ $DIA_SEMANA -eq 7 ]; then
    tar czf /copia_seguridad/completa/completa_$FECHA.tgz /home /etc /root
else
    # Si no es domingo, realizar copia incremental de /etc
    tar czf /copia_seguridad_incremental/$FECHA_SIMPLE/etc_$FECHA.tgz /etc
fi
