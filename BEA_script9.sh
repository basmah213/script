#!/bin/bash
echo "1. Sumar"
echo "2. Restar"
echo "3. Multiplicar"
echo "4. Dividir"
read -p "Elige una opcion: " opcion
read -p "Introduce el primer numero: " num1
read -p "Introduce el segundo numero: " num2

case $opcion in
    1) echo "Resultado: $(( num1+ num2 ))";;
    2) echo "Resultado: $(( num1 - num2))";;
    3) echo "Resultado: $(( num1 * num2))";;
    4) echo "Resultado: $(( num1 / num2))";;
    *) echo "Opcion no valida";;
esac
