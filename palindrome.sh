#Write a function to check if the two numbers are Palindromes 


#!/bin/bash -x
echo "Enter a number to check whether it is palindrome or not"
read num
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
num2="$( palindrome $num )"
if [ $num -eq $num2 ]
then
        echo "Number is palindrome"
else
        echo "Number is not palindrome"
fi
