#!/bin/bash -x
let i=1
sum=0
while [ $i -le 5 ]
do
	twoDigitRandomNumber=$((10+RANDOM%90));
	sum=$((sum+twoDigitRandomNumber));
	echo sum=$sum
	i=$((i+1));
done
avg=$((sum/(i-1)))
echo "average is: "$avg
