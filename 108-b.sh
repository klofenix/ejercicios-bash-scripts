#!/bin/bash
function imprimir_tabla(){
    for num in 1 2 3 4 5 6 7 8 9 10
    do
        echo -e "\nTabla del $num\n"
        for i in 1 2 3 4 5 6 7 8 9 10
        do
            res=$(($num*$i))
            echo "$num x $i = $res"
        done
        sleep 2
    done
    
}
echo -e "\n Tablas de multiplicar: "
imprimir_tabla