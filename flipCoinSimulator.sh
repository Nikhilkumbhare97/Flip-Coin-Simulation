#!/bin/bash -x


isHeads=1
Head=0
Tail=0

read -p "Number of times Coin Flip :" flip


for (( i=1; i<=$flip ; i++ ))
do
	result=$((RANDOM%2))
	if [ $result -eq $isHeads ]
	then
		echo Heads
		Head=$(($Head+1))
	else
		echo Tails
		Tail=$(($Tail+1))
	fi
done

echo "Number of Times Heads Won :"$Head
echo "Number of Times Tails Won :"$Tail
