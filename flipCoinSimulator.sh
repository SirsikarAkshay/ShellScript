#!/bin/bash

for(( i=0; i<10; i++ ))
do

dec=$(($RANDOM%2+1))

if(($dec==1))
then
	echo "Heads"
else
	echo "Tails"
fi

done
