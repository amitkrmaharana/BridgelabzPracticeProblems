#Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,… 




#!/bin/bash -x
echo "Enter a number from the give valus 1,10,100,1000,10000: "
read num
case $num in
        1)echo UNIT;;
        10)echo TEN;;
        100)echo HUNDRED;;
        1000)echo THOUSAND;;
        10000)echo TEN THOUSAND;;
        *)echo INVALID INPUT;;
esac
