#Write a program to compute Factors of a number N using prime factorization method. Logic -> Traverse till i*i <= N instead of i <= N for efficiency. 
#O/P -> Print the prime factors of number N.



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
