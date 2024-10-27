#!/bin/bash
suma=0
while true; do
    read -p "Introduce un numero (0 para terminar): " num
    if [ "$num" eq 0 ]; then
        break
    fi
    suma=$((suma + num))
done 
echo "Suma total: $suma"

