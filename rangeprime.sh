#Extend the program to take a range of number as input and output the Prime  Numbers in that range. 




#!/bin/bash -x
echo "Enter a number to check if its prime or not"
read num
count=0
prime[0]=2
for((j=3;j<=$num;j++))
do
        b=0
        for((i=2;i<$j;i++))
        do
                remain=$((j%i))
                if [ $remain -eq 0 ]
                then
                        b=1
                fi
        done
        if [ $b -eq 0 ]
        then
                (( count++ ))
                prime[$count]=$j
        fi
done
echo "Prime numbers in range $num are ${prime[@]}"
