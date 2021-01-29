#Write a Program where a gambler starts with Rs 100 and places Re 1 bet  until he/she goes broke i.e. no more money to gamble or reaches the  goal of Rs 200. Keeps track of number of times won and number of bets  made. 




#!/bin/bash
money=100
win=1
number_of_bets_won=0
number_of_bets=0
while [ $money -gt 0 ] && [ $money -lt 200 ]
do
        gamble=$((RANDOM%2))
        if [ $gamble -eq $win ]
        then
                (( money++ ))
                (( number_of_bets_won++ ))
        else
                (( money-- ))
        fi
        (( number_of_bets++ ))
done
if [ $money -eq 200 ]
then
        echo "Gambler reached the goal and has money Rs $money"
else
        echo "Gambler is broke and has money Rs $money"
fi
echo "Total number of bets played are $number_of_bets"
echo "Number of bets won by gambler are $number_of_bets_won"
