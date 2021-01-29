#Write a program that takes a command-line argument n and prints a  table of the powers of 2 that are less than or equal to 2^n till 256 is  reached.. 



#!/bin/bash -x
echo "Enter the value of n till which the power of 2 has to be determined"
read n
power=0
i=0
while [ $power -lt 256 ] && [ $i -le $n ]
do
        power=$((2**i))
        (( i++ ))
done
echo $((i-1)) power of 2 is $power
