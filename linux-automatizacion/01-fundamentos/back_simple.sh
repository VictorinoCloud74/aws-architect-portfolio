#!/bin/bash

# Definir variables
FECHA=$(date +%Y-%m-%d)
ORIGEN="$HOME/documentos_importantes"
DESTINO="$HOME/backups"

# Crear carpeta de destino si no existe
mkdir -p $DESTINO

# Acción de automatización
echo "Iniciando backup del día $FECHA..."
tar -czf $DESTINO/backup_$FECHA.tar.gz $ORIGEN

echo "Backup completado con éxito en $DESTINO"
