#Write a program in the following steps 
#a. Roll a die and find the number between 1 to 6 
#b. Repeat the Die roll and find the result each time 
#c. Store the result in a dictionary 
#d. Repeat till any one of the number has reached 10 times 
#e. Find the number that reached maximum times and the one that was for minimum times 





#!/bin/bash
declare -A dice
dice["ONE"]=0
dice["TWO"]=0
dice["THREE"]=0
dice["FOUR"]=0
dice["FIVE"]=0
dice["SIX"]=0
while [ ${dice[ONE]} -lt 10 ] && [ ${dice[TWO]} -lt 10 ] && [ ${dice[THREE]} -lt 10 ] && [ ${dice[FOUR]} -lt 10 ] && [ ${dice[FIVE]} -lt 10 ] && [ ${dice[SIX]} -lt 10 ]
do
        roll=$((RANDOM%6+1))
        case $roll in
                1)dice["ONE"]=$((dice[ONE]+1));;
                2)dice["TWO"]=$((dice[TWO]+1));;
                3)dice["THREE"]=$((dice[THREE]+1));;
                4)dice["FOUR"]=$((dice[FOUR]+1));;
                5)dice["FIVE"]=$((dice[FIVE]+1));;
                6)dice["SIX"]=$((dice[SIX]+1));;
        esac
done
echo ${dice[@]}
echo ${!dice[@]}
min=${dice[ONE]}
b="ONE"
max=${dice[ONE]}
c="ONE"
if [ ${dice[TWO]} -lt $min ]
then
        min=${dice[TWO]}
        b="TWO"
fi
if [ ${dice[TWO]} -gt $max ]
then
        max=${dice[TWO]}
        c="TWO"
fi
if [ ${dice[THREE]} -lt $min ]
then
        min=${dice[THREE]}
        b="THREE"
fi
if [ ${dice[THREE]} -gt $max ]
then
        max=${dice[THREE]}
        c="THREE"
fi
if [ ${dice[FOUR]} -lt $min ]
then
        min=${dice[FOUR]}
        b="FOUR"
fi
if [ ${dice[FOUR]} -gt $max ]
then
        max=${dice[FOUR]}
        c="FOUR"
fi
if [ ${dice[FIVE]} -lt $min ]
then
