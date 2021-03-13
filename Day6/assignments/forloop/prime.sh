#!/bin/bash -x
read -p "Enter a number: " n
isPrime="true"
if [[ $n -eq 0 || $n -eq 1 ]]
then
	isPrime="false"
else
	for ((i=2; i<=n/2; i++))
	do
		if [ $((n%i)) -eq 0 ]
		then
			isPrime="false"
		fi
	done
fi
if [ $isPrime == "true" ]
then
	echo "$n is prime number"
else
	echo "$n is not a prime number"
fi
