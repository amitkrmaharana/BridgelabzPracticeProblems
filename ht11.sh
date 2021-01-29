#Extend the Flip Coin problem till either Heads or Tails wins 11 times.





#!/bin/bash -x
HEAD=0
TAIL=0
while [ $HEAD -lt 11 ] && [ $TAIL -lt 11 ]
do
        flip=$((RANDOM%2))
        if [ $flip -eq 0 ]
        then
                (( HEAD++ ))
        else
                (( TAIL++ ))
        fi
done
if [ $HEAD -eq 11 ]
then
        echo "Heads wins the game"
else
        echo "Tails wins the game"
fi
echo "Heads counts to $HEAD"
echo "Tails counts to $TAIL"
