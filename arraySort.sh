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
