#!/bin/bash -x
##
 # Write a program that reads 5 Random 3 digit values and 
 # then outputs the minimum and maximum value.
##

# input: 5,10,15,2,20

echo "Enter five 3 digit values"

read -p "Enter number1: " a
bigger=$a
smaller=$a

read -p "Enter number2: " b
if [ $b -gt $bigger ]
then
	bigger=$b
fi

if [ $b -lt $smaller ]
then
	smaller=$b
fi

read -p "Enter number3: " c
if [ $c -gt $bigger ]
then
	bigger=$c
fi

if [ $c -lt $smaller ]
then
	smaller=$c
fi

read -p "Enter number4: " d
if [ $d -gt $bigger ]
then
	bigger=$d
fi

if [ $d -lt $smaller ]
then
	smaller=$d
fi

read -p "Enter number5: " e
if [ $e -gt $bigger ]
then
	bigger=$e
fi

if [ $e -lt $smaller ]
then
	smaller=$e
fi

echo $bigger" is the greatest number"
echo $smaller" is the smallest number"
