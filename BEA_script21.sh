#!/bin/bash
numero_adivinar=42 # Numero fijo que el usuario debe adivinar


while true; do
    read -p "Adivina el numero (entre 1 y 100, o introduce 0 para rendirte): " numero_usuario
    if [ "$numero_usuario" eq 0 ]; then 
       echo "Te has rendido. El numero era $numero_adivinar."
       break
    elif [ "$numero_usuario" eq "$numero_adivinar" ]; then
        echo "¡Enhorabuena! Has adivinado el numero."
        break
    elif [ "$numero_usuario" -lt "$numero_adivinar" ]; then
        echo "El numero es mayor."
    else 
        echo "El numero es menor."
    fi 
done

