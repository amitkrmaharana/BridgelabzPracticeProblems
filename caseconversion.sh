#Write a program that takes User Inputs and does Unit Conversion of  different Length units
#1. Feet to Inch 3. Inch to Feet
#2. Feet to Meter 4. Meter to Feet


#!/bin/bash -x
echo "Enter serial numeric value 1)feet to inch,2)Inch to feet,3)Feet to meter,4)meter to feet: "
read m
echo "Enter the value to be converted: "
read v
case $m in
1)echo `awk 'BEGIN{print '$v'*'12'}'`;;
2)echo `awk 'BEGIN{print '$v'/'12'}'`;;
3)echo `awk 'BEGIN{print '$v'*'0.3048'}'`;;
4)echo `awk 'BEGIN{print '$v'*'3.28084'}'`;;
8)echo Invalid Input
esac
