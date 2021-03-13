
#!/bin/bash -x
##
 # Write a program that reads 5 Random 3 digit values and 
 # then outputs the minimum and maximum value.
##

# input: 5,10,15,2,20

echo "Enter five 3 digit values"
read -a array #reading the numbers into the array named 'array'
smaller=${array[0]}
bigger=${array[0]}
i=1

while [ $i -le $((${#array[@]}-1)) ]
do
	if [ ${array[i]} -gt $bigger ]
	then
		bigger=${array[i]}
	elif [ ${array[i]} -lt $smaller ]
	then
		smaller=${array[i]}
	fi
	i=$((i+1))
done

echo "biggest number is: "$bigger" and smallest number is: "$smaller
