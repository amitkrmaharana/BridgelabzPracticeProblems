#Extend the Prime Factorization Program to store all the Prime Factors of a  number n into an array and finally display the output.  



#!/bin/bash -x
echo "Enter a number to get its prime factors"
read num
j=0
for((i=2;i<=$num;i++))
do
        remain=$((num%i))
        if [ $remain -eq 0 ]
        then
                primefactors[$j]=$i
                num=$((num/i))
                (( j++ ))
                (( i-- ))
        fi
done
echo "Prime factors are"
echo ${primefactors[@]}

