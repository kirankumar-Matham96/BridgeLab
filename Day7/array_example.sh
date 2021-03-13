#!/bin/bash -x
declare -a Fruits

# If we want to declare array as dictionary then we can use -A instead of -a

Fruits[0]="Apple"
Fruits[1]="Banana"
Fruits[2]="Orange"

# To print all the elements

echo ${Fruits[@]}

# To print only required element

echo ${Fruits[1]}

# To print number of elements in the array or length of the array

echo ${#Fruits[@]}

# Using forloop to print elements in the array

for elements in ${Fruits[@]}
do
	echo $elements
done

# To delete an element from the array

unset Fruits[2]
echo ${Fruits[@]}
