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

if [ ( `echo "if($A > $B) 1" | bc` -eq 1 ) && ( `echo "if($A > $C) 1" | bc` -eq 1 ) && ( `echo "if($A > $D) 1" | bc` -eq 1 ) ]
then
	max=$A
	if [ (`echo "if($B < $C) 1" | bc` -eq 1) &&  (`echo "if($B < $D) 1" | bc` -eq 1) ]
	then
		min=$B
	elif [ (`echo "if($C < $B) 1" | bc` -eq 1) &&  (`echo "if($C < $D) 1" | bc` -eq 1) ]
	then
		min=$C
	elif [ (`echo "if($D < $B) 1" | bc` -eq 1) &&  (`echo "if($D < $C) 1" | bc` -eq 1) ]
	then
		min=$D
	fi
elif [  (`echo "if($B > $A) 1" | bc` -eq 1) && (`echo "if($B > $C) 1" | bc` -eq 1) && (`echo "if($B > $D) 1" | bc` -eq 1) ]
then
	max=$B
	if [ (`echo "if($A < $C) 1" | bc` -eq 1) &&  (`echo "if($A < $D) 1" | bc` -eq 1) ]
	then
		min=$A
	elif [ (`echo "if($C < $A) 1" | bc` -eq 1) &&  (`echo "if($C < $D) 1" | bc` -eq 1) ]
	then
		min=$C
	elif [ (`echo "if($D < $A) 1" | bc` -eq 1) &&  (`echo "if($D < $C) 1" | bc` -eq 1) ]
	then
		min=$D
	fi
elif [  (`echo "if($C > $A) 1" | bc` -eq 1) && (`echo "if($C > $B) 1" | bc` -eq 1) && (`echo "if($C > $D) 1" | bc` -eq 1) ]
then
	max=$C
	if [ (`echo "if($B < $A) 1" | bc` -eq 1) &&  (`echo "if($B < $D) 1" | bc` -eq 1) ]
	then
		min=$B
	elif [ (`echo "if($A < $B) 1" | bc` -eq 1) &&  (`echo "if($A < $D) 1" | bc` -eq 1) ]
	then
		min=$A
	elif [ (`echo "if($D < $B) 1" | bc` -eq 1) &&  (`echo "if($D < $A) 1" | bc` -eq 1) ]
	then
		min=$D
	fi
elif [  (`echo "if($D > $A) 1" | bc` -eq 1) && (`echo "if($D > $B) 1" | bc` -eq 1) && (`echo "if($D > $C) 1" | bc` -eq 1) ]
then
	max=$D
	if [ (`echo "if($B < $C) 1" | bc` -eq 1) &&  (`echo "if($B < $A) 1" | bc` -eq 1) ]
	then
		min=$B
	elif [ (`echo "if($C < $B) 1" | bc` -eq 1) &&  (`echo "if($C < $A) 1" | bc` -eq 1) ]
	then
		min=$C
	elif [ (`echo "if($A < $B) 1" | bc` -eq 1) &&  (`echo "if($A < $C) 1" | bc` -eq 1) ]
	then
		min=$A
	fi
else
	echo all are equal
fi
echo "Max: $max and Min: $min"
