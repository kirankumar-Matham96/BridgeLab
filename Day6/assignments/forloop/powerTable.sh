#!/bin/bash -x
##
# Write a program that takes command line argument n , ansd prints table of powers of 2 that is lessthan or equal to 2^n
##

read -p "Enter a number:" n
result=1
for ((i=1; i<=n; i++))
do
	result=$(($result*2))
	echo $result
done
