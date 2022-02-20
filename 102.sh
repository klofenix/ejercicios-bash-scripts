#!/bin/bash
echo "Escriba el nombre del fichero a analizar"
read "RUTA"
echo -e "\nEl nombre del fichero introducido es: " $RUTA
if [ -r $RUTA ]
then
    echo -e "\nEl numero de lineas del fichero son: "
    cat ./$RUTA | wc -l
else
    clear
    echo -e "\nNo existe el fichero introducido\n"
    
fi
