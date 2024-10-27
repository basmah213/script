#!/bin/bash
archivo="lista.txt"


while true; do
     echo "1.Añadir"
     echo "2.Buscar"
     echo "3.Listar"
     echo "4.Ordenar"
     echo "5.Borrar"
     echo "6.Salir"
     read -p "Elige una opcion: " opcion

    case $opcion in 
        1)  #Añadir
            read -p "Nombre: " nombre
            read -p "Direccion: " direccion
            read -p "Telefono: " telefono
            echo "$nombre, $direccion, $telefono" >> "$archivo"
            ;;
       2) # Buscar 
          read -p "Buscar por nombre, direccion o telefono: " busqueda
          grep -i "$busqueda" "$archivo"
          ;;
      3) # Listar 
         cat "$archivo"
         ;;
      4) # Ordenar 
         sort "$archivo" -o "$archivo"
         echo "Archivo ordenado."
         ;;
      5) # Borrar 
         rm -f "$archivo"
         echo "Archivoo borrado."
         ;;
      6) # Salir  
         break
        ;;
      *) echo "Opcion  no valida";;
    esac
done

