#!/bin/bash -x
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
}

read -p "Enter two numbers: " n1 n2
is_palindrome $n1
is_palindrome $n2
