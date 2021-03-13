#!/bin/bash -x
read -p "Enter a number: " n
factorial=1
if [ $n -ne 0 ]
then
	for ((i=$n; i>=1; i--))
	do
		factorial=$(($factorial*$i))
	done
fi

echo "factorial of $n is = "$factorial
