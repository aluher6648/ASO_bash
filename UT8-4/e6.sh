#!/bin/bash
# en cron poner estalinea  */10 * * * * ruta/e6.sh

echo "$(date) - Estado sys" >> /var/log/historial.txt
uptime >> /var/log/historial.txt
w >> /var/log/historial.txt
