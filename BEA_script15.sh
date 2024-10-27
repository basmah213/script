#!/bin/bash
if [ -z "$1" ]; then
   echo "Uso: $0 <numero>"
   exit 1
fi

numero=$1
for i in {1.10}; do
    echo "$i x $numero = $((i * numero))"
done
