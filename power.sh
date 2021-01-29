#Write a program that takes a command-line argument n and prints a table of the  powers of 2 that are less than or equal to 2^n. 



#!/bin/bash -x
echo "Enter a number to print power of 2 till nth terms"
read n
for((i=0;i<=n;i++))
do
        echo $((2**i))
done
