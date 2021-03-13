#!/bin/bash -x
won=1
number_of_bets=0
number_of_wins=0
number_of_losess=0

money_have=100
money_should_earn=200
each_bet=20
money_for_winner=20 # gains Rs.20/- for each win

while [[ ($money_have -ge $each_bet && $money_have -lt $money_should_earn) ]]
do
	((number_of_bets++))
	result=$((RANDOM%2))
	if [ $result -eq $won ]
	then
		money_have=$(($money_have+$each_bet))
		((number_of_wins++))
	else
		money_have=$(($money_have-$each_bet))
		((number_of_losess++))
	fi
done

if [ $money_have -eq 0 ]
then
	echo "Player brok!"
else
	echo "player won!"
fi

echo "number of bets = $number_of_bets"
echo "number of wins = $number_of_wins"
echo "number of losess = $number_of_losess"
