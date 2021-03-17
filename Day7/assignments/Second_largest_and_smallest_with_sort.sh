#!/bin/bash -x

##
# Write a program in the following steps
# a. Generate 10 Random 3 digit numbers
# b. Store in an array
# c. Find the 2nd largest and 2nd smallest of the array after sorting
##

declare -a random_numbers
for (( i=0; i<=9; i++ ))
do
	random_numbers[$i]=$((100+RANDOM%900))
done

echo ${random_numbers[@]}

# sorting ascending order (buble-sort technique)

for ((i=0; i<=((${#random_numbers[@]}-1)); i++))
do
	for ((j=0; j<=((${#random_numbers[@]}-$i-1)); j++))
	do
		#if (( ${random_numbers[$j]}>${random_numbers[$(($j+1))]} ))
		#then
		if ((${random_numbers[j]}>${random_numbers[$((j+1))]}))
		then
			# swap
			random_numbers[$j]=$(( ${random_numbers[$j]}+${random_numbers[$(($j+1))]} ))
			random_numbers[$(($j+1))]=$(( ${random_numbers[$j]}-${random_numbers[$(($j+1))]} ))
			random_numbers[$j]=$(( ${random_numbers[$j]}-${random_numbers[$(($j+1))]} ))
		fi
	done
done

smallest=${random_numbers[0]}
biggest=${random_numbers[((${#random_numbers[@]}-1))]}
second_smallest=${random_numbers[1]}
second_biggest=${random_numbers[((${#random_numbers[@]}-2))]}

echo "biggest number is: "$biggest" and smallest number is: "$smallest
echo "biggest number is: "$second_biggest" and smallest number is: "$second_smallest
