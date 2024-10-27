#!/bin/bash

if [ $# -lt 4 ]; then
   echo "Error. La sintaxis correcta es $0 alta/baja nomre apellido1 apellido2 [grupo]"
fi 

opcion=$1
nombre=$2
apellido1=$3
apellido2=$4
grupo=${5:-"$(echo ${apellido1:0:2}${apellido2:0:2}${nombre:0:1})"}

usuario="alu${apellido1:0:2}${apellido2:0:2}${nombre:0:1}"

if [ "$opcion" == "baja" ]; then
   sudo useradd -m -g "$grupo" -s /bin/bash "$usuario"
   echo "Usuario $usuario añadido al grupo $grupo."
elif [ "$opcion" == "baja" ]; then 
     sudo userdel -r "$usuario"
     echo "Usuario $usuario eliminado."
else
    echo "Error. La sintaxix correcta es $0 alta/baja nombre apellido1 apellido2 [grupo]"
    exit 1
fi

