#Write a Program to generate a birth month of 50 individuals between the  year 92 & 93. Find all the individuals having birthdays in the same month.  Store it to finally print.




#!/bin/bash
declare -A month
month["January"]=0
month["Feburary"]=0
month["March"]=0
month["April"]=0
month["May"]=0
month["June"]=0
month["July"]=0
month["August"]=0
month["September"]=0
month["October"]=0
month["November"]=0
month["December"]=0
for((i=0;i<50;i++))
do
        birth=$((RANDOM%12+1))
        case $birth in
                1)(( month[January]++ ));;
                2)(( month[Feburary]++ ));;
                3)(( month[March]++ ));;
                4)(( month[April]++ ));;
                5)(( month[May]++ ));;
                6)(( month[June]++ ));;
                7)(( month[July]++ ));;
                8)(( month[August]++ ));;
                9)(( month[September]++ ));;
                10)(( month[October]++ ));;
                11)(( month[November]++ ));;
                12)(( month[December]++ ));;
        esac
done
echo ${month[@]}
echo ${!month[@]}


