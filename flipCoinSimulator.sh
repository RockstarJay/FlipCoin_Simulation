#!/bin/bash
echo "Flip Coin Simulation Problem"

isHead=1
flipCoin=$((RANDOM%2))
if [ $flipCoin -eq $isHead ]
then
	echo "Head Wins"
else
	echo "Tail Wins"
fi
