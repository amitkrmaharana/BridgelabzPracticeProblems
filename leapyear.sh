#Write a program that takes a year as input and outputs the Year is a Leap Year or not  a Leap Year. A Leap Year checks for 4 Digit Number, Divisible by 4 and not 100 unless  divisible by 400. 


#!/bin/bash -x
echo "Enter a number to check whether it is a leap year or not: "
read year
a=$((year%4))
b=$((year%100))
c=$((year%400))
if [ $a -eq 0 ] && ([ $b -ne 0 ] || [ $c -eq 0 ])
then
        echo "$year is a Leap Year"
else
        echo "$year is not a Leap Year"
fi
