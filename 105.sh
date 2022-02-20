#!/bin/bash
#Tomamos las horas y minutos del dia y los pasamos a minutos en ($A)
#if then elif else if

HORALOCAL=$(date +%R)
HORA=$(date +%H)
MINUTOS=$(date +%M)

let A=$HORA*60+$MINUTOS
echo $HORALOCAL

if [[ $A -ge 480 && $A -le 900 ]]
then
    echo "Buenos Días"
elif [[ $A -ge 901 && $A -le 1200 ]]
then
    echo "Buenas tardes"
else
    echo "Buenas noches"
fi



#
