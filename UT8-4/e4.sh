#!/bin/bash
#en cron añadir @reboot y la ruta del script a ejecutar
echo "$(date) - El equipo se ha reiniciado" >> /var/log/reinicios.txt
 
