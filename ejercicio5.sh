#!/bin/bash
read -p "Introduce el primer numero: " num1
read -p "Introduce el segundo numero: " num2
media=$(echo "scale=2; ($num1 +$num2) / 2" | bc)
echo "La media aritmetica es: $media"

