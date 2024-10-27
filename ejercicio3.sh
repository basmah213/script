#!/bin/bash
ls /etc > listado_etc.txt
cat listado_etc.txt
echo "Numero de lineas: $(wc -l < listado_etc.txt)"
echo "Numero de palabras: $(wc -w < listado_etc.txt)"

