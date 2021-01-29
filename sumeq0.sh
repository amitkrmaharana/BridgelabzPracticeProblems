Write a Program to show Sum of three Integer adds to ZERO 
#!/bin/bash -x
echo "Enter 10 nos into an array of which any three should add upto zero"
for((i=0;i<10;i++))
do
        read num
        arr[i]=$num
done
echo ${arr[@]}
for((i=0;i<8;i++))
do
        x=$((i+1))
        for((j=$x;j<9;j++))
        do
                y=$((j+1))
                for((k=$y;k<10;k++))
                do
                        d=$((arr[i]+arr[j]+arr[k]))
                        if [ $d -eq 0 ]
                        then
                                echo "The triplet which sums to ZERO is ${arr[i]} ${arr[j]} ${arr[k]}"
                        fi
                done
        done
done
