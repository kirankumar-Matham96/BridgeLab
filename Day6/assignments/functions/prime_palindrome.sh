#!/bin/bash -x
function is_prime(){
	isPrime="true"
	n=$1
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

}

function is_palindrome(){
	n=$1
	reverse=0
	while [ $n -ne 0 ]
	do
		rem=$(($n%10))
		reverse=$((reverse*10+rem))
		n=$(($n/10))
	done
	if [ $reverse -eq $1 ]
	then
		echo "$1 is palindrome!"
	else
		echo "$1 is not a palindrome!"
	fi
	is_prime $1
}
read -p "Enter a number: " number
is_prime $number
is_palindrome $number
