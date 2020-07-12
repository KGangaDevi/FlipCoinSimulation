#!/bin/bash -x
echo "Problem displays winner Heads or Tails"
read -p "Enter fliptimes" fliptime
headsCount=0
tailsCount=0
for ((i=1;i<=fliptime;i++))
do
flipcoin=$((RANDOM%2))
if [[ $flipcoin -eq 1 ]]
then
	((headsCount++))
else
	((tailsCount++))
fi
done
echo "Number of times Heads Won" $headsCount
echo "Number of times Tails Won" $tailsCount
