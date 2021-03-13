#!/bin/bash -x
##
# read a number 1, 10, 100, 1000, ...  and display unit, ten, hundred, ...
##

read -p "Enter a number from 1, 100, 1000, 10000: " number
case "$number" in
	1)
		echo unit;;
	10)
		echo ten;;
	100)
		echo hundred;;
	1000)
		echo thousand;;
	10000)
		echo ten thousand;;
	*)
		echo out of range
esac
