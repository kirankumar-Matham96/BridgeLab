#!/bin/bash -x
declare -a array
index=0
for ((i=0;i<=100;i++))
do
	if [[ ($(($i%11)) -eq 0 && $i -ne 0) ]]
	then
		array[$index]=$i
		((index++))
	fi
done

echo ${array[@]}
