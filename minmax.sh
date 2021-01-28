#Write a program that reads 5 Random 3 Digit values and then outputs the minimum  and the maximum value



#!/bin/bash
for((i=1;i<=5;i++))
do
        random=$((RANDOM%900+100))
        echo -n "   $random "
        if [ $i -eq 1 ]
        then
                min=$random
                max=$random
        else
                if [ $min -le $random ]
                then
                        if [ $random -ge $max ]
                        then
                                max=$random
                        fi
                else
                        min=$random
                fi
        fi
done
echo "The maximum value is $max"
echo "The minimum value is $min"

