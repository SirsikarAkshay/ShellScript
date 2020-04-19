#!/bin/bash 

declare -A tripletDic
headHeadHead=0
headHeadTail=0
headTailHead=0 
headTailTail=0
tailHeadHead=0
tailHeadTail=0
tailTailHead=0
tailTailTail=0

headHeadHeadArray=()
headHeadTailArray=()
headtailHeadArray=()
headTailTailArray=()
tailHeadHeadArray=()
tailHeadTailArray=()
tailTailHeadArray=()
tailTailTailArray=()

for (( i=0; i<200; i++ ))
do

	dec1=$(($RANDOM%2+1))
	dec2=$(($RANDOM%2+1))
	dec3=$(($RANDOM%2+1))	

	if(($dec1==1)) && (($dec2==1)) && (($dec3==1))
	then
		headHeadHead=$(($headHeadHead+1))
		headHeadHeadArray+=('H,H,H')
	elif(($dec1==1)) && (($dec2==2)) && (($dec3==1))
	then
		headTailHead=$(($headTailHead+1))
		headTailHeadArray+=('H,T,H')
	elif(($dec1==1)) && (($dec2==1)) && (($dec3==2))
	then
		headHeadTail=$(($headHeadTail+1))
		headHeadTailArray+=('H,H,T')

	elif(($dec1==1)) && (($dec2==2)) && (($dec3==2))                                                                         
    then 
	 	headHeadTail=$(($headTailTail+1))
		headHeadTailArray+=('H,T,T')
	
	elif(($dec1==2)) && (($dec2==1)) && (($dec3==1))
   then
		tailHeadHead=$(($tailHeadHead+1))
		tailHeadHeadArray+=('T,H,H')
	elif(($dec1==2)) && (($dec2==1)) && (($dec3==2))
	then
		tailHeadTail=$(($tailHeadTail+1))
		tailHeadTailArray+=('T,H,T')
	elif(($dec1==2)) && (($dec2==2)) && (($dec3==1))
	then
		tailTailHead=$(($tailTailHead+1))
		tailTailHeadArray+=('T,T,H')                                                                                   
	else
		tailTailTail=$(($tailTailTail+1))
		tailTailTailArray+=('T,T,T')
	fi
done

tripletDic[headHeadHeads]=headHeadHeadArray
tripletDic[headHeadTails]=headHeadTailArray
tripletDic[headTailHeads]=headTailHeadArray
tripletDic[headTailTails]=headTailTailArray
tripletDic[tailHeadHeads]=tailHeadHeadArray
tripletDic[tailHeadTails]=tailHeadTailArray
tripletDic[tailTailHeads]=tailTailHeadArray
tripletDic[tailTailTails]=tailTailTailArray

HHHPercent=$((100*$headHeadHead/200))
HHTPercent=$((100*$headHeadTail/200))
HTHPercent=$((100*$headTailHead/200))
HTTPercent=$((100*$headTailTail/200))
THHPercent=$((100*$tailHeadHead/200))
THTPercent=$((100*$tailHeadTail/200))
TTHPercent=$((100*$tailTailHead/200))
TTTPercent=$((100*$tailTailTail/200))

echo "${headHeadHeadArray[@]}"
echo "${headTailHeadArray[@]}"
echo "${headHeadTailArray[@]}"
echo "${headTailTailArray[@]}"
echo "${tailHeadHeadArray[@]}"
echo "${tailHeadTailArray[@]}"
echo "${tailTailHeadArray[@]}"
echo "${tailTailTailArray[@]}"


echo "heads,heads percentage is $HHHPercent"
echo "heads,tails percentage is $HHTPercent"
echo "tails,heads percentage is $HTHPercent"
echo "tails,tails percentage is $HTTPercent"
echo "heads,heads percentage is $THHPercent"
echo "heads,tails percentage is $THTPercent"
echo "tails,heads percentage is $TTHPercent"
echo "tails,tails percentage is $TTTPercent"

percentArray=($HHHPercent,$HHTPercent,$HTHPercent,$HTTPercent,$THHPercent,$THTPercent,$TTHPercent,$TTTPercent)

for item in ${percentArray[@]}
do 
        echo $item
done | sort

