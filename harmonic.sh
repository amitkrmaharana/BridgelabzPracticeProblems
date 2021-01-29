#Write a program that takes a command-line argument n and prints the nth harmonic  number. Harmonic Number is of the form



#!/bin/bash
echo "Enter the value of n to get nth harmonic number"
read n
for((i=1;i<=n;i++))
do
        echo "1/$i"
done
