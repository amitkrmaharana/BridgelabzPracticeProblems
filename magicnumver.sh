#Find the Magic Number
#a. Ask the user to think of a number n between 1 to 100
#b. Then check with the user if the number is less then n/2 or greater
#c. Repeat till the Magic Number is reached..




#!/bin/bash
echo "Think of a number between 1 to 100"
guess=0
a=0
n=100
while [ $guess -lt 1 ]
do
        echo "Enter '1' if your number is $n else enter '0'"
        read guess
        if [ $guess -eq 0 ]
        then
                b=$n
                n=$(((a+n)/2))
                echo "Enter '1' if your number is greater than $n else enter '0'"
                read guess1
                if [ $guess1 -eq 1 ]
                then
                        a=$n
                        n=$b
                fi
        fi
done
echo "Your number is $n"
