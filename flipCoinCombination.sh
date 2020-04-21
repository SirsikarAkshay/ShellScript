#!/bin/bash 

declare -A doubletDic
headHead=0
headTail=0
tailHead=0
tailTail=0

headHeadArray=()
headTailArray=()
tailHeadArray=()
tailTailArray=()

for (( i=0; i<10; i++ ))
do

	dec1=$(($RANDOM%4))
	
	if(($dec1==0))
	then
		headHead=$(($headHead+1))
		headHeadArray+=('H,H')
	elif(($dec1==1))
	then
		headTail=$(($headTail+1))
		headTailArray+=('H,T')
	elif(($dec1==2)) 
	then
		tailHead=$(($tailHead+1))
		tailHeadArray+=('T,H')
	else
		tailTail=$(($tailTail+1))
		tailTailArray+=('T,T')
	fi
done

doubletDic[headHeads]=headHeadArray
doubletDic[headTails]=headTailArray
doubletDic[tailHeads]=tailHeadArray
doubletDic[tailTails]=tailTailArray

HHPercent=$((100*$headHead/10))
HTPercent=$((100*$headTail/10))
THPercent=$((100*$tailHead/10))
TTPercent=$((100*$tailTail/10))


echo "${headHeadArray[@]}"
echo "${headTailArray[@]}"
echo "${tailHeadArray[@]}"
echo "${tailTailArray[@]}"

echo "heads,heads percentage is $HHPercent"
echo "heads,tails percentage is $HTPercent"
echo "tails,heads percentage is $THPercent"
echo "tails,tails percentage is $TTPercent"

