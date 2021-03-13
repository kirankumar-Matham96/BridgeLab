#!/bin/bash -x
read -p "Enter the lower limit: " l
read -p "Enter the upper limit: " u
isPrime="true"
for ((n=$l; n<=$u; n++))
do
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
	fi
	isPrime="true"
done
