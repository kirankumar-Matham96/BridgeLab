#!/bin/bash -x
i=1
while [ $i -le 2 ]
do
	randomNumber=$((1+RANDOM%6))
	sum=$((sum+randomNumber))
	i=$((i+1))
done
echo $sum
