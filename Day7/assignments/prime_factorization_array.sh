#!/bin/bash
read -p "Enter a number other than 0 and 1: " number
temp=$number
declare -a primeFactors
index=0
isPrime="true"
for ((n=2; n<=$number; n++))
do
	for ((i=2; $((i*i))<=n; i++)) # or we can also use 'for ((i=2; i<=n/2; i++))'
	do
		if [ $((n%i)) -eq 0 ]
		then
			isPrime="false"
		fi
	done

	if [ $isPrime == "true" ]
	then
		if [ $(($number%$n)) -eq 0 ]
		then
			number=$(($number/$n))
			primeFactors[$index]=$n
			((index++))
			n=1
		fi
	fi
	isPrime="true"
done
echo "Prime factors of $temp are: "${primeFactors[@]}
