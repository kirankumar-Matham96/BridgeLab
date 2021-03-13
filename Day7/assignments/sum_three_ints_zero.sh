#!/bin/bash -x
declare -a array
array[0]=$((-1))
array[1]=0
array[2]=1
echo ${array[@]}

for ((i=0;i<=$((${#array[@]}-1));i++))
do
	sum=$(($sum+${array[$i]}))
done

echo "sum is = "$sum
