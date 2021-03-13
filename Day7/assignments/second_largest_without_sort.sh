#!/bin/bash -x

##
# Write a program in the following steps
# a. Generate 10 Random 3 digit numbers
# b. Store in an array
# c. Find the 2nd largest and 2nd smallest of the array 
#    without sorting
##

declare -a random_numbers
for (( i=0; i<=9; i++ ))
do
	random_numbers[$i]=$((100+RANDOM%900))
done

smallest=${random_numbers[0]}
biggest=${random_numbers[0]}

for ((i=1; i<=((${#random_numbers[@]}-1)); i++))
do
	if [ ${random_numbers[i]} -gt $biggest ]
	then
		biggest=${random_numbers[i]}
	elif [ ${random_numbers[i]} -lt $smallest ]
	then
		smallest=${random_numbers[i]}
	fi
done

second_biggest=${random_numbers[0]}
second_smallest==${random_numbers[0]}

for ((i=1; i<=((${#random_numbers[@]}-1)); i++))
do
	if [[ (${random_numbers[i]} -lt $biggest && ${random_numbers[i]} -gt $second_biggest) ]]
	then
		second_biggest=${random_numbers[i]}
	elif [[ (${random_numbers[i]} -gt $smallest && ${random_numbers[i]} -lt $second_smallest) ]] # hetting error message: operand needed
	then
		second_smallest=${random_numbers[i]}
	fi
done

echo ${random_numbers[@]}

echo "biggest number is: "$biggest" and smallest number is: "$smallest
echo "second biggest number is: "$second_biggest" and second smallest number is: "$second_smallest
