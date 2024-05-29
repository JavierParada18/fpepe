#!/bin/bash

# Directorio donde se iniciará la búsqueda
DIRECTORIO="/home/javierparada/Documents/roba2/fastpepe.xyz"

# Buscar y renombrar los archivos que terminan con ?ver=****
find "$DIRECTORIO" -type f -name '*\?ver=*' | while read -r archivo; do
    # Extraer el nombre base del archivo sin el sufijo ?ver=****
    nuevo_nombre="${archivo%%\?ver=*}"
    # Renombrar el archivo
    mv "$archivo" "$nuevo_nombre"
done