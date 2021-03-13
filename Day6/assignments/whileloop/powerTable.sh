#!/bin/bash -x
read -p "Enter a number: " n
if [ $n -eq 0 ]
then
	echo "0"
else
	var=1
	m=1
	while [[ ($m -le $n && $var -lt 256) ]]
	do
		((m++))
		var=$(($var*2))
		echo $var
	done
fi
