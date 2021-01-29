#Write a program in the following steps 
#a. Generates 10 Random 3 Digit number.  
#b. Store this random numbers into a array.  
#c. Then find the 2nd largest and the 2nd smallest element without sorting the array.




#!/bin/bash
for((i=0;i<10;i++))
do
        var=$((RANDOM%900+100))
        arr[i]=$var
done
echo ${arr[@]}
if [ ${arr[0]} -lt ${arr[1]} ]
then
        small=${arr[0]}
        secsmall=${arr[1]}
        seclarge=${arr[0]}
        large=${arr[1]}
else
        small=${arr[1]}
        secsmall=${arr[0]}
        seclarge=${arr[1]}
        large=${arr[0]}
fi
for((i=2;i<10;i++))
do
        if [ ${arr[i]} -lt $secsmall ]
        then
                if [ ${arr[i]} -lt $small ]
                then
                        secsmall=$small
                        small=${arr[i]}
                else
                        secsmall=${arr[i]}
                fi
        fi
        if [ ${arr[i]} -gt $seclarge ]
        then
                if [ ${arr[i]} -gt $large ]
                then
                        seclarge=$large
                        large=${arr[i]}
                else
                        seclarge=${arr[i]}
                fi
        fi
done
echo "The second smallest value in the array is $secsmall"
echo "The second largest value in the array is $seclarge"
