#Write a program that reads 5 Random 2 Digit values , then find their  sum and the average 



#!/bin/bash -x
for((i=1;i<=5;i++))
do
        digitnum=$((RANDOM%90+10))
        (( sum+=digitnum ))
done
avg=`awk 'BEGIN{print '$sum'/'5'}'`
echo "The average of 5 random values is $avg"
echo "The sum of 5 random value is $sum"
