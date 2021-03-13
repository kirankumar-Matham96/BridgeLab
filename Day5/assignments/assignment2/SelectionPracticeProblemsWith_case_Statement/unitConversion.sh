#!/bin/bash -x
##
# read input from user and convert units:
#	1) Feet to Inch		2) Feet to Metre
#	3) Inch to Feet		3) Metre to Feet
##

read -p "Enter a length to convert units: " input
echo "Select option to convert units:"
echo "1) Feet to Inch	2) Feet to Metre"
echo "3) Inch to Feet	4) Metre to Feet"
read option
case "$option" in
	1)
		output=$((input*12))
		output="${output} inches"
			;;
	2)
		output=`echo "scale=4;$input*0.3048" | bc`
		output="${output} metres"
			;;
	3)
		output=`echo "scale=4;$input*0.8333" | bc`
		output="${output} feet"
			;;
	4)
		output=`echo "scale=4;$input*3.28" | bc`
		output="${output} feet"
			;;
	*)
		echo invalid option
esac
echo $output
