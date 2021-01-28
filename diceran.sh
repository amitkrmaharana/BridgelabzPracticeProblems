#Use Random to get Dice Number between 1 to 6



#!/bin/bash -x
dicenum=$((RANDOM%6+1))
echo $dicenum
