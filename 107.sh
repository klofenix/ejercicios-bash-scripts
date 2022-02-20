#!/bin/bash
#Crea un shell script que sume los números del 1 al 1000 mediante una estructura for, while y until.
#Si se quiere observar el incremento descomentar los echo

function bucleFor () {
    for (( B=1; B<=1000; B++))
    do
        if [[ $B != 1000 ]] ; then
            let Suma=$B+1
        fi
        #echo "La suma de 1 en 1 en For es: $B"
    done
    echo "La suma de 1 en 1 en For es: $B"
}


function bucleWhile () {
    A="1"
    while [ $A -le 999 ]; do
        ((++A ))
        #echo "La suma de 1 en 1 en While es: $A"
    done
    echo "La suma de 1 en 1 en While es: $A"
}

function bucleUntil () {
    C="1"
    until [[ $C -eq 1000 ]]
    do
        ((++C))
        #echo "La suma de 1 n 1 En until es: $C"
    done
    echo "La suma de 1 n 1 En until es: $C"
}


#Segun lo que quieras ejecutar descomentar.
#bucleWhile
#bucleFor
#bucleUntil