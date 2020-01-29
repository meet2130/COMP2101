#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

#using read command to get the input of three numbers
read -p "please enter first num: " firstnum

read -p "please enter second num: " secondnum

read -p "please enter thit=rd number: " thirdnum

#adding three number
sum=$((firstnum + secondnum + thirdnum))

product=$((firstnum * secondnum * thirdnum))

cat <<EOF
$ the addition of $firstnum, $secondnum and $thirdnum is $sum
$the multiplication of $firstnum, $secondnum and $thirdnum is $product
EOF
