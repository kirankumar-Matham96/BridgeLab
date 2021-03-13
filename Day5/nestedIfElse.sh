#!/bin/bash -x
isFullTime=1
isPartTime=2
randomCheck=$((RANDOM%3))
empRatePerHr=20

if [ $isFullTime -eq $randomCheck ]
then
	echo "Employee is full time"
	workingHrs=8
	empSalary=$(( $empRatePerHr*$workingHrs ))
	echo "salary is: "$empSalary
elif [ $isPartTime -eq $randomCheck ]
then
	echo "Employee is part time"
	workingHrs=4
	empSalary=$(( $empRatePerHr*$workingHrs ))
	echo "salary is: "$empSalary
else
	echo "Employee is absent"
fi
