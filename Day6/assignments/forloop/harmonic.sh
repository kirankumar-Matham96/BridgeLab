#!/bin/bash -x
##
# read a number n from the user and print nth harmonic. 
# nth harmonic is Hn = 1/1 + 1/2 + 1/3 + 1/4 + ... + 1/n
##
read -p "enter a number: " n
harmonic=0
for (( i=1; i<=n; i++))
do
	harmonic=`echo "scale=2;$harmonic+(1/$i)" | bc`
done
