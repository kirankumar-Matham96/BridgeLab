#!/bin/bash -x
##
# read a number and display the week day: (sun, mon, ..., sat)
##

read -p "enter a number from 1 to 7: " number
case "$number" in
	1)
		echo sunday;;
	2)
		echo monday;;
	3)
		echo tuesday;;
	4)
		echo wednesday;;
	5)
		echo thursday;;
	6)
		echo friday;;
	7)
		echo saturday;;
	*)
		echo not a valid input
esac
