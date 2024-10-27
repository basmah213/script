#!/bin/bash
if [ -z "$1" ]; then
  echo "Uso: $0 <directorio>"
  exit 1
fi

if [ ! -d "$1" ]; then
   echo "Error: $1 no es un directorio."
   exit 1
fi

archivos=0
subdirectorios=0

for entrada in "$1"/*; do
    if [ -f "$entrada" ]; then
       archivos=$((archivos + 1))
    elif [ -d "$entrada" ]; then
        subdirectorios=$((subdirectorios + 1))
   fi
done

echo "Total de archivos: $archivos"
echo "Total de subdirectorios: $subdirectorios"

