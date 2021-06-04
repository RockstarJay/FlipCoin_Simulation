#!/bin/bash
echo "Flip Coin Simulation Problem"

read -p "How Many Time you Want To Flip The Coin : " n
isHead=1
Heads=0
Tails=0
for (( i=0; i<n; i++ ))
do
	flipCoin=$((RANDOM%2))
	if [ $flipCoin -eq $isHead ]
	then
		((Heads++))
	else
		((Tails++))
	fi
done
echo "Head Wins $Heads Times"
echo "Tail Wins $Tails Times"
