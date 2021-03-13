#!/bin/bash -x
##
# read three numbers and perform:
#	1) a+b*c	3) c+a/b
#	2) a%b+c	4) a*b+c
# then find the max and min
##

read -p "Enter 3 numbers" a b c

A=`expr $a + $b \* $c`
B=`expr $a % $b + $c`
C=`echo "scale=1;$c+$a/$b" | bc`
D=`expr $a \* $b + $c`

echo $A $B $C $D

min=0
max=0

if [  `echo "if($A > $B) 1" | bc` -eq 1  ]
then
	if [ `echo "if($A > $C) 1" | bc` -eq 1 ]
	then
		if [ `echo "if($A > $D) 1" | bc` -eq 1 ]
		then
			max=$A
			if [ `echo "if($B < $C) 1" | bc` -eq 1 ]
			then
				if [ `echo "if($B < $D) 1" | bc` -eq 1 ]
				then
					min=$B
				else
					min=$D
				fi
			elif [ `echo "if($C < $D) 1" | bc` -eq 1 ]
			then
				min=$C
			else
				min=$D
			fi
		else
			max=$D
			if [ `echo "if($A < $B) 1" | bc` -eq 1 ]
			then
				if [ `echo "if($A < $C) 1" | bc` -eq 1 ]
				then
					min=$A
				else
					min=$C
				fi
			elif [ `echo "if($B < $C) 1" | bc` -eq 1 ]
			then
				min=$B
			else
				min=$C
			fi
		fi
	elif [ `echo "if($C > $D) 1" | bc` -eq 1 ]
	then
		max=$C
		if [ `echo "if($A < $B) 1" | bc` -eq 1 ]
		then
			if [ `echo "if($A < $D) 1" | bc` -eq 1 ]
			then
				min=$A
			else
				min=$D
			fi
		elif [ `echo "if($B < $D) 1" | bc` -eq 1 ]
		then
			min=$B
		else
			min=$D
		fi
	else
		max=$D
		if [ `echo "if($A < $B) 1" | bc` -eq 1 ]
		then
			if [ `echo "if($A < $C) 1" | bc` -eq 1 ]
			then
				min=$A
			else
				min=$C
			fi
		elif [ `echo "if($B < $C) 1" | bc` -eq 1 ]
		then
			min=$B
		else
			min=$C
		fi
	fi
elif [ `echo "if($B > $C) 1" | bc` -eq 1 ]
then
	if [ `echo "if($B > $D) 1" | bc` -eq 1 ]
	then
		max=$B
		if [ `echo "if($A < $C) 1" | bc` -eq 1 ]
		then
			if [ `echo "if($A < $D) 1" | bc` -eq 1 ]
			then
				min=$A
			else
				min=$D
			fi
		elif [ `echo "if($C < $D) 1" | bc` -eq 1 ]
		then
			min=$C
		else
			min=$D
		fi
	else
		max=$D
		if [ `echo "if($A < $B) 1" | bc` -eq 1 ]
		then
			if [ `echo "if($A < $C) 1" | bc` -eq 1 ]
			then
				min=$A
			else
				min=$C
			fi
		elif [ `echo "if($B < $C) 1" | bc` -eq 1 ]
		then
			min=$B
		else
			min=$C
		fi
	fi
elif [ `echo "if($C > $D) 1" | bc` -eq 1 ]
then
	max=$C
	if [ `echo "if($A < $B) 1" | bc` -eq 1 ]
	then
		if [ `echo "if($A < $D) 1" | bc` -eq 1 ]
		then
			min=$A
		else
			min=$D
		fi
	elif [ `echo "if($B < $D) 1" | bc` -eq 1 ]
	then
		min=$B
	else
		min=$D
	fi
else
	max=$D
	if [ `echo "if($A < $B) 1" | bc` -eq 1 ]
	then
		if [ `echo "if($A < $C) 1" | bc` -eq 1 ]
		then
			min=$A
		else
			min=$C
		fi
	elif [ `echo "if($B < $C) 1" | bc` -eq 1 ]
	then
		min=$B
	else
		min=$C
	fi
fi

echo "Max: $max and Min: $min"
