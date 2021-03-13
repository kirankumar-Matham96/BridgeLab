#!/bin/bash -x
isFullTime=1
isPartTime=2
wageRatePerHr=20
workingHrs=0

case "$((RANDOM%3))" in
	$isFullTime) echo "Employee is full time"
	   	     workingHrs=8
			;;
	$isPartTime) echo "Employee is part time"
	   	     workingHrs=4
			;;
	*) echo "Employee is absent"
esac

wage=$((wageRatePerHr*workingHrs))
echo "wage is: " $wage
