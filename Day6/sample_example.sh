#!/bin/bash -x
function myfunc(){
	echo $1
}
result="$((RANDOM%2))"
myfunc $result
if [ $result -eq 1 ]
then
	echo $result
else
	echo $result
fi
