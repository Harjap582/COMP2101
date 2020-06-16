#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

prompt="please enter a number here"

###taking input for user by 3 times
read -p "$prompt " num1
read -p "$prompt " num2
read -p "$prompt " num3
 ##showing what the user give us input
echo "first input by user $num1"
echo "second input by user $num2"
echo "third input by user $num3"

#the sum of the three numbers
sum=$(($num1 +$num2 +$num3))
echo "the sum of the three numbers is $sum "

#the product of the three numbers
product=$(($num1 *$num2 *$num3))
echo "the product of the three numbers is $product "

cat <<EOF
EOF
