#!/bin/bash -x
isPresent=1
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then
	empRatePerHr=20
	empWorkingHrs=8
	salary=$(( $empRatePerHr*$empWorkingHrs))
else
	salary=0
fi

echo "employee salary is: "$salary
