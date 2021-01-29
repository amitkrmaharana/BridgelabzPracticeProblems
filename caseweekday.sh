#Read a Number and Display the week day (Sunday, Monday,…)




#!/bin/bash -x
echo "Enter a number to determine the week between 1 to 7: "
read num
case $num in
        1)echo SUNDAY;;
        2)echo MONDAY;;
        3)echo TUESDAY;;
        4)echo WEDNESDAY;;
        5)echo THURSDAY;;
        6)echo FRIDAY;;
        7)echo SATURDAY;;
        *)echo INVALID INPUT;;
esac

