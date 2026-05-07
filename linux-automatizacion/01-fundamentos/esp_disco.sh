#!/bin/bash

UMBRAL=80
USO_DISCO=$(df / | grep / | awk '{ print $5 }' | sed 's/%//')

if [ $USO_DISCO -gt $UMBRAL ]; then
    echo "ALERTA: El uso de disco es crítico ($USO_DISCO%)"
else
    echo "Estado del disco: OK ($USO_DISCO%)"
fi
