#!/bin/bash -x
##
# read a single digit number and print it in words
##

read -p "Enter a single digit number" number
case "$number" in
	0)
		echo zero;;
	1)
		echo one;;
	2)
		echo two;;
	3)
		echo three;;
	4)
		echo four;;
	5)
		echo five;;
	6)
		echo six;;
	7)
		echo seven;;
	8)
		echo eight;;
	9)
		echo nine;;
	*)
		echo number is not a single digit or not a number at all!
esac
