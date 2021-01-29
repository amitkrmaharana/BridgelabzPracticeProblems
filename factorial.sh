#Write a program that computes a factorial of a number taken as input.  5 Factorial – 5! = 1 * 2 * 3 * 4 * 5 



#!/bin/bash -x
echo "Enter a number to compute its factorial"
read num
factorial=1
for((i=1;i<=$num;i++))
do
        factorial=$((factorial*i))
done
echo "Factorial of $num is $factorial"
