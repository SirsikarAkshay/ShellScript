#!/bin/bash

dec=$(($RANDOM%2+1))

if(($dec==1))
then
	echo "Heads"
else
	echo "Tails"
fi
