#!/bin/bash -x
echo "Problem displays winner Heads or Tails"
#read -p "Enter fliptimes" fliptime
headsCount=0
tailsCount=0
while [[ $headsCount -le 21 || $tailsCount -le 21 ]]
do
flipcoin=$((RANDOM%2))
if [[ $flipcoin -eq 1 ]]
then
	((headsCount++))
else
	((tailsCount++))
fi
if [[ $headsCount -eq $tailsCount ]]
then
echo "TIE"
elif [[ $headsCount -eq 21 ]]
then
count=$(($headsCount-$tailsCount))
echo "Heads Won by " $count
elif [[ $tailsCount -eq 21 ]]
then
count=$(($tailsCount-$headsCount))
echo "Tails Won by " $count
fi
done
#echo "Number of times Heads Won" $headsCount
#echo "Number of times Tails Won" $tailsCount
