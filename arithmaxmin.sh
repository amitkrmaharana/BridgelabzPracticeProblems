#Enter 3 Numbers do following arithmetic operation and find the one that  is maximum and minimum 
#1. a + b * c 3. c + a / b
#2. a % b + c 4. a * b + c




#!/bin/bash -x
echo "Enter 3 numbers"
read a
read b
read c
art1=$((a+b*c))
art2=$((a%b+c))
art3=$((c+a/b))
art4=$((a*b+c))
min=$art1
max=$art1
if [ $min -gt $art2 ]
then
        min=$art2
fi
if [ $min -gt $art3 ]
then
        min=$art3
fi
if [ $min -gt $art4 ]
then
        min=$art4
fi
if [ $max -lt $art2 ]
then
        max=$art2
fi
if [ $max -lt $art3 ]
then
        max=$art3
fi
if [ $max -lt $art4 ]
then
        max=$art4
fi
echo $art1 $art2 $art3 $art4
echo "The minimum value is $min"
echo "THe maximum value is $max"
