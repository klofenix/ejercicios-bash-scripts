#!/bin/bash

echo -e "Introduce el valor de:\n"
read -p "A: " A
read -p "B: " B
read -p "C: " C
echo "Los valores introducidos son: ""A= $A B= $B C= $C"
echo "RESTO A%B :"
echo "$((A%B))"

echo "Division A/C :"
echo "$((A/C))"

echo "Operacion 1 2*B+3*(A-C) :"
echo "$((2*B+3*(A-C)))"

echo "Operacion 2 A*(B/C) :"
echo "$((A*(B/C)))"

echo "Operacion 3 (A*C)%B :"
echo "$(((A*C)%B))"
