#!/bin/bash -x
##
# checking leap year or not.
# Also use years: 1600, 1700, 1800, 1900, 2000.
##
year=`date +%Y
if [[ ( $((year%4)) -eq 0 ) ]]
then
	if [[ ($((year%100)) -ne 0) ]]
	then
		isLeapYear=true
	else
		if [[ ( $((year%400)) -eq 0 ) ]]
		then
			isLeapYear=true
		fi
	fi
else
	isLeapYear=false
fi

if [ $isLeapYear == "true" ]
then
	echo $year" is a leap year"
else
	echo $year" is not a leap year"
fi
