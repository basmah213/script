#!/bin/bash
if [ -z "$1" ], then 
   echo "Uso: $0 <directorio>"
   exit 1
fi

if [ ! -d "$1" ]; then 
   echo "Error: $1 no es un directorio."
   exit 1
fi

contador=0
for entrada in "$1"/*; do
    if [ -d "$entrada" ]; then 
        echo "$entrada es un directorio"
    elif [ -f "$entrada" ]; then
          echo "$entrada es un fichero"
    fi
    contador=$((contador + 1))
done

echo "Total de entradas: $contador"

