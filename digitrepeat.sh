#Take a range from 0 – 100, find the digits that are repeated twice like 33, 77,  etc and store them in an array.




#!/bin/bash -x
j=0
for((i=1;i<100;i++))
do
        remain=$((i%11))
        if [ $remain -eq 0 ]
        then
                arr[((j++))]=$i
        fi
done
echo ${arr[@]}
