#!/bin/bash -x

##
# Write a program to generate a birth month of 50 individuals between
# the year 92 &93. Find all the individuals having birthdays in the
# same month. Store it to finally print.
##

total_individuals=50
declare -A birth_months
for ((person_name=1;person_name<=$total_individuals;person_name++))
do
	birth_months[$person_name]=$((1+RANDOM%12))
done

echo ${birth_months[@]}

Jan=1;   declare -A month_Jan;  person_Jan=0
Feb=2;   declare -A month_Feb;  person_Feb=0
Mar=3;   declare -A month_Mar;  person_Mar=0
Apr=4;   declare -A month_Apr;  person_Apr=0
May=5;   declare -A month_May;  person_May=0
Jun=6;   declare -A month_Jun;  person_Jun=0
Jul=7;   declare -A month_Jul;  person_Jul=0
Aug=8;   declare -A month_Aug;  person_Aug=0
Sep=9;   declare -A month_Sep;  person_Sep=0
Oct=10;  declare -A month_Oct;  person_Oct=0
Nov=11;  declare -A month_Nov;  person_Nov=0
Dec=12;  declare -A month_Dec;  person_Dec=0

for ((person_name=1;person_name<=50;person_name++))
do
	case "${birth_months[$person_name]}" in
		$Jan)
			((person_Jan++))
			month_Jan[$person_Jan]=$key
			;;
		$Feb)
			((person_Feb++))
			month_Feb[$person_Feb]=$key
			;;
		$Mar)
			((person_Mar++))
			month_Mar[$person_Mar]=$key
			;;
		$Apr)
			((person_Apr++))
			month_Apr[$person_Apr]=$key
			;;
		$May)
			((person_May++))
			month_May[$person_May]=$key
			;;
		$Jun)
			((person_Jun++))
			month_Jun[$person_Jun]=$key
			;;
		$Jul)
			((person_Jul++))
			month_Jul[$person_Jul]=$key
			;;
		$Aug)
			((person_Aug++))
			month_Aug[$person_Aug]=$key
			;;
		$Sep)
			((person_Sep++))
			month_Sep[$person_Sep]=$key
			;;
		$Oct)
			((person_Oct++))
			month_Oct[$person_Oct]=$key
			;;
		$Nov)
			((person_Nov++))
			month_Nov[$person_Nov]=$key
			;;
		$Dec)
			((person_Dec++))
			month_Dec[$person_Dec]=$key
			;;
		*)
			echo "Error!"
			;;
	esac
done

echo "individuals born in Jan are: "${month_Jan[@]}
echo "individuals born in Feb are: "${month_Feb[@]}
echo "individuals born in Mar are: "${month_Mar[@]}
echo "individuals born in Apr are: "${month_Apr[@]}
echo "individuals born in May are: "${month_May[@]}
echo "individuals born in Jun are: "${month_Jun[@]}
echo "individuals born in Jul are: "${month_Jul[@]}
echo "individuals born in Aug are: "${month_Aug[@]}
echo "individuals born in Sep are: "${month_Sep[@]}
echo "individuals born in Oct are: "${month_Oct[@]}
echo "individuals born in Nov are: "${month_Nov[@]}
echo "individuals born in Dec are: "${month_Dec[@]}

