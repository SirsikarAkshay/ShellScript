#!/bin/bash

heads=0
tails=0

while [ $heads -lt 21 ] || [ $tails -lt 21 ]
do
dec=$(($RANDOM%2+1))

if(($dec==1))
then
	heads=$(($heads+1))
else
	tails=$(($tails+1))
fi
done

if(($heads==21))
then
	echo "heads is the winner"
else
	echo "Tails is the winner"
fi

