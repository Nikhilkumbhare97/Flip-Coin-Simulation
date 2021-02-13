#!/bin/bash -x

#Constants
isHeads=1
maxWin=21
ties=1

#Variables
Head=0
Tail=0
Tie=0

read -p "Number of times Coin Flip :" flip

for (( i=1; i<=$flip ; i++ ))
do
	while [[ $Head -lt $maxWin ]] && [[ $Tail -lt $maxWin ]] && [[ $(($Head+$Tail)) -lt $flip ]] && [[ $Tie -lt $ties ]]
	do
		result=$((RANDOM%2))
		if [ $result -eq $isHeads ]
		then
			Head=$(($Head+1))
		else
			Tail=$(($Tail+1))
		fi

		if [ $Head -eq $Tail ]
		then
			((Tie++))
		else
			((i++))
		fi
	done
done

echo "Number of Times Heads Won :" $Head
echo "Number of Times Tails Won :" $Tail
echo "Number of Times Tie :" $Tie


if [ $Head -gt $Tail ]
then
	echo Head won by $(($Head - $Tail ))
elif [ $Tail -gt $Head ]
then
	echo Tail won by $(($Tail - $Head ))
else
	echo Tie
fi

