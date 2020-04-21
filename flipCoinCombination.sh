#!/bin/bash 
#singlet combination sort

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

if(($headsPercent>$tailsPercent))
then
	echo "heads wins"
elif(($tailsPercent>$headsPercent))
then
	echo "tails wins"
else
	echo "tied"
fi

#Doublet combination sort
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

if(($HHPercent>$HTPercent)) && (($HHPercent>$THPercent)) && (($HHPercent>$TTPercent))
then
        echo "Heads,Heads wins!!!"
elif(($HTPercent>$HHPercent)) && (($HTPercent>$THPercent)) && (($HTPercent>$TTPercent))
then
        echo "Heads,tails wins!!!"
elif(($THPercent>$HHPercent)) && (($THPercent>$HTPercent)) && (($THPercent>$TTPercent))
then
        echo "Tails, heads wins!!!"
elif(($TTPercent>$HHPercent)) && (($TTPercent>$HTPercent)) && (($TTPercent>$THPercent))
then
        echo "tails, tails wins!!!"
else
        echo "Tied between combinations"
fi

#triplet sorting

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

for (( i=0; i<100; i++ ))
do

	dec1=$(($RANDOM%8))	

	if(($dec1==0)) 
	then
		headHeadHead=$(($headHeadHead+1))
		headHeadHeadArray+=('H,H,H')
	elif(($dec1==1)) 
	then
		headTailHead=$(($headTailHead+1))
		headTailHeadArray+=('H,T,H')
	elif(($dec1==2))
	then
		headHeadTail=$(($headHeadTail+1))
		headHeadTailArray+=('H,H,T')

	elif(($dec1==3))                                                                         
    	then 
	 	headHeadTail=$(($headTailTail+1))
		headHeadTailArray+=('H,T,T')
	
	elif(($dec1==4))
   	then
		tailHeadHead=$(($tailHeadHead+1))
		tailHeadHeadArray+=('T,H,H')
	elif(($dec1==5))
	then
		tailHeadTail=$(($tailHeadTail+1))
		tailHeadTailArray+=('T,H,T')
	elif(($dec1==6))
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


echo "heads,heads,heads percentage is $HHHPercent"
echo "heads,heads,tails percentage is $HHTPercent"
echo "heads,tails,heads percentage is $HTHPercent"
echo "heads,tails,tails percentage is $HTTPercent"
echo "tails,heads,heads percentage is $THHPercent"
echo "tails,heads,tails percentage is $THTPercent"
echo "tails,tails,heads percentage is $TTHPercent"
echo "tails,tails,tails percentage is $TTTPercent"

percentArray=($HHHPercent $HHTPercent $HTHPercent $HTTPercent $THHPercent $THTPercent $TTHPercent $TTTPercent)

echo "Sorted array is: "
for item in "${percentArray[@]}"
do 
        echo $item
done | sort -nr 


max=`for item in "${percentArray[@]}"
        do
        echo $item
done | sort -nr | head -n1`

echo "Highest occurence is $max"

if(($HHHPercent>$HHTPercent)) && (($HHHPercent>$HTHPercent))  && (($HHHPercent>$HTTPercent)) && (($HHHPercent>$THHPercent)) && (($HHHPercent>$THTPercent))  && (($HHHPercent>$TTHPercent)) && (($HHHPercent>$TTTPercent)) 
then
	echo "HHH Wins"
elif(($HHTPercent>$HHHPercent)) && (($HHTPercent>$HTHPercent)) && (($HHTPercent>$HTTPercent)) && (($HHTPercent>$THHPercent)) && (($HHHPercent>$THTPercent)) && (($HHTPercent>$TTHPercent)) && (($HHTPercent>$TTTPercent))
then
	echo "HHT Wins"
elif(($HTHPercent>$HHHPercent)) && (($HTHPercent>$HHTPercent)) && (($HTHPercent>$HTTPercent)) && (($HTHPercent>$THHPercent)) && (($HTHPercent>$THTPercent)) && (($HTHPercent>$THTPercent)) && (($HHHPercent>$TTTPercent))
then
	echo "HTH Wins"
elif(($HTTPercent>$HHHPercent)) && (($HTTPercent>$HHTPercent)) && (($HTTPercent>$HTHPercent)) && (($HTTPercent>$THHPercent)) && (($HHHPercent>$THTPercent)) && (($HHHPercent>$TTHPercent)) && (($HHHPercent>$TTTPercent)) 
then
	echo "HTT Wins"
elif(($THHPercent>$HHHPercent)) && (($THHPercent>$HHTPercent)) && (($THHPercent>$HTHPercent)) && (($THHPercent>$HTTPercent)) && (($THHPercent>$THTPercent)) && (($THHPercent>$TTHPercent)) && (($THHPercent>$TTTPercent)) 
then
	echo "THH Wins"
elif(($THTPercent>$HHHPercent)) && (($THTPercent>$HHTPercent)) && (($THTPercent>$HTHPercent)) && (($THTPercent>$HTTPercent)) && (($THTPercent>$THHPercent)) && (($THTPercent>$TTHPercent)) && (($THTPercent>$TTTPercent))
then
	echo "THT Wins"
elif(($TTHPercent>$HHHPercent)) && (($TTHPercent>$HHTPercent)) && (($TTHPercent>$HTHPercent)) && (($TTHPercent>$HTTPercent)) && (($TTHPercent>$THHPercent)) && (($TTHPercent>$THTPercent)) && (($TTHPercent>$TTTPercent))
then
	echo "TTH Wins"
elif(($TTTPercent>$HHHPercent)) && (($TTTPercent>$HHTPercent)) && (($TTTPercent>$HTHPercent)) && (($TTTPercent>$HTTPercent)) && (($TTTPercent>$THHPercent)) && (($TTTPercent>$THTPercent)) && (($TTTPercent>$TTHPercent))
then 
	echo "TTT Wins"
else
	echo "Tied between combi"
fi

