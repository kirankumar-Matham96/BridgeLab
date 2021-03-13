#!/bin/bash

##
# magic number: Think a number in the given range and find it using binary searching method.
##

read -p "Think a number between 1 to 100: "
read -p "Did you think?: y/n? " yes
if [[ $yes == "y" || $yes == "Y" ]]
then
	Lower_limit=1
	Upper_limit=100
	less=""
	greater=""
	magic_number="not found"
	while [[ $magic_number == "not found" ]]
	do
		n=`echo "($Lower_limit+$Upper_limit)/2" | bc`
		read -p  "Is your number less than $n ?: y/n? " less
		if [[ $less == "y" ||  $less == "Y" ]]
		then
			Upper_limit=$n
		elif [[ $less == "n" || $less == "N" ]]
		then
			read -p "Is your number greater than $n ?: y/n? " greater
			if [[ $greater == "y" ||  $greater == "Y" ]]
			then
				Lower_limit=$n
			elif [[ $greater == "n" || $greater == "N" ]]
			then
				echo "Your magic number is: "$n
				magic_number="found"
			else
				echo "invalid responce! (type y if yes, type n if no)"
			fi
		else
			echo "invalid responce! (type y if yes, type n if no)"
		fi
	done
fi

