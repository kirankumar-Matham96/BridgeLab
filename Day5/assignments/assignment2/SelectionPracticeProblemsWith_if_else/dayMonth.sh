#!/bin/bash -x

month=`date +%d-%m-%Y | awk -F '-' '{print $2}'`
day=`date +%d-%m-%Y | awk -F '-' '{print $1}'`

if [[ ($month -ge 3) && ($month -le 6) ]]
then
	if [ $month -eq 3 ]
	then
		if [ $day -ge 20 ]
		then
			echo true
		else
			echo false
		fi
	fi
	if [ $month -eq 6 ]
	then
		if [ $day -le 20 ]
		then
			echo true
		else
			echo false
		fi
	fi
	if [[ ($month -gt 3) && ($month -lt 6) ]]
	then
		echo true
	fi
else
	echo false
fi
