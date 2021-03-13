#!/bin/bash -x
heads=1
tails=0
H=0
T=0
while [[ $H -lt 11 && $T -lt 11 ]]
do
	coinFlipped=$((RANDOM%2))
	if [ $coinFlipped -eq $heads ]
	then
		((H++))
	else
		((T++))
	fi
done
