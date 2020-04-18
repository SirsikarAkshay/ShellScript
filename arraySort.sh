#!/bin/bash

read -p "Enter the value of a" a
read -p "Enter the value of b" b
read -p "Enter the value of c" c

res1=$(($a+$b*$c))
echo $res1

res2=$(($a*$b+$c))
echo $res2

res3=$(($c+$a/$b))
echo $res3

res4=$(($a%$b+$c))
echo $res4

declare -A dic
dic[c1]=$res1
dic[c2]=$res2
dic[c3]=$res3
dic[c4]=$res4

echo ${dic[@]}


arr=()

arr=${dic[@]}


for item in ${dic[@]}
do
	echo $item
done | sort -rn



for item in ${dic[@]}
do
	echo $item
done | sort
