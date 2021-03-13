#!/bin/bash -x
counter=0
Fruits[((counter++))]="Apple"
Fruits[((counter++))]="Banana"
Fruits[((counter++))]="Orange"

# To print elements of the array

echo ${Fruits[@]}

# To print the number of elements in the array

echo ${#Fruits[@]}
