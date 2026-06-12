#!/bin/bash

LOG_DIR=$1
HORA_EJECUCION=$(date +%Y%m%d_%H%M%S)
DESTINO="/home/ubuntu/archived_logs"

echo "Directorio origen: $LOG_DIR"
echo "Marca de tiempo: $HORA_EJECUCION"

if [ ! -d "$DESTINO" ]; then
    echo "Se ha creado el destino del archivo en /home/ubuntu/archived_logs/"
    mkdir "$DESTINO"
fi

echo "Backup completed at $HORA_EJECUCION. Origin: $LOG_DIR" >> "$DESTINO/logs_backups.txt"
cd "$LOG_DIR"

tar -czvf "$DESTINO/logs_archive_$HORA_EJECUCION.tar.gz" * --remove-files
