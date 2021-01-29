#Take a number from user and check if the number is a Prime then show  that its palindrome is also prime 
#a. Write function check if number is Prime  
#b. Write function to get the Palindrome.  
#c. Check if the Palindrome number is also prime




#!/bin/bash
echo "Enter a number to check if the number and its palindrome are  prime or not"
read num
function prime() {
        a=$1
        b=0
        for((i=2;i<$a;i++))
        do
                remain=$((a%i))
                if [ $remain -eq 0 ]
                then
                        b=1
                fi
        done
        echo $b
}
function palindrome() {
        a=$1
        newnum=0
        while [ $a -gt 0 ]
        do
                remain=$((a%10))
                newnum=$(((newnum*10)+remain))
                a=$((a/10))
        done
        echo $newnum
}
prime_check1="$( prime $num )"
if [ $prime_check1 -eq 0 ]
then
        echo "The number you entered is a Prime number"
        palinum="$( palindrome $num )"
        prime_check2="$( prime $palinum)"
        if [ $prime_check2 -eq 0 ]
        then
                echo "The palindrome of the number you entered is also a Prime number"
        else
                echo "The palindrome of the number you entered is not a Prime number"
        fi
else
        echo "The number you entered is not a Prime number"
        palinum="$( palindrome $num )"
        prime_check2="$( prime $palinum)"
        if [ $prime_check2 -eq 0 ]
        then
                echo "But the palindrome of the number you entered is a Prime number"
        else
                echo "The palindrome of the number you entered is also not a Prime number"
        fi
fi
