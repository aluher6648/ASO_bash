#!/bin/bash

FECHA=$(date +%Y%m%d_%H%M%S)
ARCHIVO="/root/copia_etc_$FECHA.tgz"
tar czf $ARCHIVO /etc
