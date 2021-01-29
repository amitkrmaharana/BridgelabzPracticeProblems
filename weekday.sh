#Read a Number and Display the week day (Sunday, Monday,…)



#!/bin/bash -x
day=$((RANDOM%7+1))
if [ $day -eq 1 ]
then
        echo SUNDAY
elif [ $day -eq 2 ]
then
        echo MONDAY
elif [ $day -eq 3 ]
then
        echo TUESDAY
elif [ $day -eq 4 ]
then
        echo WEDNESDAY
elif [ $day -eq 5 ]
then
        echo THURSDAY
elif [ $day -eq 6 ]
then
        echo FRIDAY
else
        echo SATURDAY
fi
