#Add two Random Dice Number and Print the Result



#!/bin/bash -x
dicenum1=$((RANDOM%6+1))
dicenum2=$((RANDOM%6+1))
dicesum=$((dicenum1+dicenum2))
echo $dicesum
