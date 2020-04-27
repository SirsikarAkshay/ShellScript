#!/bin/bash

heads=0
tails=0

while [ $heads -lt 1000 ]  
do
dec=$(($RANDOM%2+1))

if(($dec==1))
then
	heads=$(($heads+1))
	echo "heads: $heads"
else
	tails=$(($tails+1))
	echo "tails: $tails"
fi
	
	if(($heads>=21)) && (($tails<$(($heads-1))))
	then
		echo "heads wins"
		exit
	elif(($tails>=21)) && (($heads<$(($tails-1))))
	then
		echo "tails wins"
		exit 
	fi
done


