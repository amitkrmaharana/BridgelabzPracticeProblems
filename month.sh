#Write a program that takes day and month from the command line and prints true if  day of month is between March 20 and June 20, false otherwise. 



#!/bin/bash -x
echo "Enter a value from 1 to 12 which represents corresponding month: "
read month
echo "Enter a value from 1 to 31 as date: "
read date
if ([ $month -eq 3 ] && [ $date -ge 20 ] && [ $date -le 31 ]) || ([ $month -eq 4 ] && [ $date -ge 1 ] && [ $date -le 30 ]) || ([ $month -eq 5 ] && [ $date -ge 1 ] && [ $date -le 31 ]) || ([ $month -eq 6 ] && [ $date -ge 1 ] && [ $date -le 20 ])
then
        echo "TRUE"
else
        echo "FALSE"
fi
