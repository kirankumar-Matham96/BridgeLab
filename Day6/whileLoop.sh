#!/bin/bash -x
counter=1
number=5
while [ $counter != $number ]
do
	echo $counter
	(( counter++ ))
done
