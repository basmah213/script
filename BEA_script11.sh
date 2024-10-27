#!/bin/bash
if [ $# -ne 2 ]; then
   echo "Uso: $0 <archivo_origen> <archivo_destino>"
   exit 1
fi

if [ ! -f "$1" ]; then
   echo "Error: El archivo $1 no existe o no es un archivo ordinario."
   exit 1
fi

if [ -e "$2" ]; then 
   echo "Error: El archivo destino $2 ya existe."
   exit 1
fi

cp "$1" "$2"
echo "Archivo copiado exitosamente."

