#Write a program that takes a input and determines if the number is a prime.




#!/bin/bash -x
echo "Enter a number to check if its prime or not"
read num
for((i=2;i<$num;i++))
do
        remain=$((num%i))
        if [ $remain -eq 0 ]
        then
                b=1
        fi
done
if [ $b -eq 1 ]
then
        echo "$num is not a prime number"
else
        echo "$num is a prime number"
fi
