#!/bin/bash -x
echo "Problem displays winner Heads or Tails"
flipcoin=$((RANDOM%2))
if [[ $flipcoin -eq 1 ]]
then
	echo "Heads"
else
	echo "Tails"
fi
