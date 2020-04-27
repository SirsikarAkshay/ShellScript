#!/bin/bash 

dec=$(($RANDOM%2+1))

if(($dec==1))
then
	echo "heads"
else
	echo "tails"
fi

