#!/bin/bash -x

##
# Write a program in the following steps:
# 	a. Roll adie and find the number between 1 to 6
# 	b. Repeat the die roll and find the result each time
# 	c. Store the result in a dictionary
# 	d. Repeat till any one of the number has reached 10 times
# 	e. Find the number that reached maximumtimes and 
# 	   that was for minimum times
##

# declaring some variables and a dictionary

declare -A die_rolls
key=0
max_1=0
max_2=0
max_3=0
max_4=0
max_5=0
max_6=0

while [ true ] # Infinite while loop too roll die
do
	roll_die=$((1+RANDOM%6)) # generating random numbers from 1 to 6
	die_rolls[$key]=$roll_die # storing into the dictionary
	((key++)) # increasing the value to change the key for dictionary values
	case "${die_rolls[$(($key-1))]}" in # case used for the switch case method
		1)	# when it rolls 1
			((max_1++)) # max_1 will keep the track of how many times 1 has rolled
			sum1=$(($sum1+$roll_die)) # adding all rolled one's
			if [ $sum1 -eq $(($roll_die*10)) ] # testing if number reached 10 times or not
			then
				max_reached=1	# to know which number reached max
				break;		# to get out from the loop
			fi
			;;
		2)
			((max_2++))
			sum2=$(($sum2+$roll_die))
			if [ $sum2 -eq $(($roll_die*10)) ]
			then
				max_reached=2
				break;
			fi
			;;
		3)
			((max_3++))
			sum3=$(($sum3+$roll_die))
			if [ $sum3 -eq $(($roll_die*10)) ]
			then
				max_reached=3
				break;
			fi
			;;
		4)
			((max_4++))
			sum4=$(($sum4+$roll_die))
			if [ $sum4 -eq $(($roll_die*10)) ]
			then
				max_reached=4
				break;
			fi
			;;
		5)
			((max_5++))
			sum5=$(($sum5+$roll_die))
			if [ $sum5 -eq $(($roll_die*10)) ]
			then
				max_reached=5
				break;
			fi
			;;
		*)
			((max_6++))
			sum6=$(($sum6+$roll_die))
			if [ $sum6 -eq $(($roll_die*10)) ]
			then
				max_reached=6
				break;
			fi
			;;
	esac
done

declare -A die_roll_track # dictionary to keep how many times a number rolled

for ((i=1;i<=6;i++))	# inserting records to the dictionary using forloop
do
	die_roll_track[$i]=$((max_$i))
done

echo ${die_roll_track[@]}

echo "$max_reached rolled maximun of 10 times"

let least_rolled_times=${die_roll_track[1]} # a variable to assume that the number in a key value be the least from dictionary
for ((i=2;i<=6;i++))
do
	if [ $least_rolled_times -gt ${die_roll_track[$i]} ]
	then
		least_rolled_times=${die_roll_track[$i]}
	fi
done



for ((i=1;i<=6;i++))
do
	if [ $least_rolled_times -eq ${die_roll_track[$i]} ]
	then
		echo "$i rolled minimum of $least_rolled_times times"
	fi
done





















