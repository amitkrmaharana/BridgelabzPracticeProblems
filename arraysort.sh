#Extend the above program to sort the array and then find the 2nd largest  and the 2nd smallest element. 




#!/bin/bash
for((i=0;i<10;i++))
do
        var=$((RANDOM%900+100))
        arr[i]=$var
done
echo ${arr[@]}
for((i=0;i<9;i++))
do
        x=$((i+1))
        for((j=$x;j<10;j++))
        do
                if [ ${arr[i]} -gt ${arr[j]} ]
                then
                        large=${arr[i]}
                        arr[i]=${arr[j]}
                        arr[j]=$large
                fi
        done
done
echo ${arr[@]}
echo "The second smallest value is ${arr[1]}"
echo "The second largest value is ${arr[8]}"
