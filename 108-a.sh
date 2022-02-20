#!/bin/bash


echo -e "\nA continuación se pedirá un numero para comprobar si es primo o no.\n"
read -rp "Numero : " NUMBER
until [ "$NUMBER" ]
do
    read -rp "Numero : " NUMBER;
done

RESTO=$(($NUMBER%2))
#echo $RESTO
if [[ $RESTO -eq 0 ]]; then
    echo "el numero es $NUMBER es par"
else
    echo "el numero es $NUMBER es impar"
fi

DIV=0
for i in seq ${NUMBER}
do
    if [[ ${NUMBER%i} -eq 0 ]]
    then
        echo $((DIV+=1))
        
        if [ $DIV -gt 2 ];then
            break
        fi
    fi
done
if [ $DIV -eq 2 ]
then
    echo "$NUMBER", "numero primo."
else
    echo "$NUMBER", "numero NO primo."
fi
exit 0