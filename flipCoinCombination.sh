#!/bin/bash 

declare -A singletDic
heads=0
tails=0

headArray=()
tailArray=()

for (( i=0; i<10; i++ ))
do

	dec=$(($RANDOM%2+1))

	if(($dec==1))
	then
		heads=$(($heads+1))
		headArray+=('heads')
	else
		tails=$(($tails+1))
		tailArray+=('tails')
	fi
done

singletDic[head]=headArray
singletDic[tail]=tailArray
headsPercent=$((100*$heads/10))
tailsPercent=$((100*$tails/10))

echo "${headArray[@]}"
echo "${tailArray[@]}"

echo "heads percentage is $headsPercent"
echo "tails percentage is $tailsPercent"

