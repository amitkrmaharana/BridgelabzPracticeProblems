#Help user find degF or degC based on their Conversion Selection. Use  Case Statement and ensure that the inputs are within the Freezing Point (  0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F ) 
#a. degF = (degC * 9/5) + 32 
#b. degC = (degF – 32) * 5/9 





#!/bin/bash -x
echo "Enter the value to be converted"
read degree
function celcius(){
        a=$1
        degc=`awk 'BEGIN{print ('$a'-'32')*'5'/'9'}'`
        echo $degc
}
function fahrenheit(){
        a=$1
        degf=`awk 'BEGIN{print ('$a'*'9'/'5')+'32'}'`
        echo $degf
}
echo "Enter 1 for converting to degree celcius and 2 for converting to degree farenheit"
read b
case $b in
        1)degC="$( celcius $degree )"
                echo "$degree farenheit is equal to $degC Celcius";;
        2)degF="$( fahrenheit $degree )"
                echo "$degree celcius is equal to $degF Farenheit";;
        *)echo Invalid Input;;
esac
