#!/bin/bash
echo "Flip Coin Simulation Problem"
winScore=0
while [ $winScore -lt 2 -a $winScore -ge -2 ]
do
	isHead=1
	Heads=0
	Tails=0
	maxWins=21
	while [ $Heads -lt $maxWins -a $Tails -lt $maxWins ]
	do
		flipCoin=$((RANDOM%2))
		if [ $flipCoin -eq $isHead ]
		then
			((Heads++))
		else
			((Tails++))
		fi
	done
	winScore=$((Heads-Tails))
done
if [ $Heads -eq $maxWins ]
then
	winScore=$((Heads-Tails))
	echo "Heads Won by $winScore"
elif [ $Tails -eq $maxWins ]
then
	winScore=$((Tails-Heads))
	echo "Tails Won By $winScore"
else
	echo "Its a Tie"
fi
