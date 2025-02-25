#!/bin/bash

#----------------------------------------------------------
# This script uses script functional-bricks.sh that defines
# funcktion map() and reduce().
# Here we can use it to demonstrate functional programming
# inside a bash script.
# First load script: . functional-bricks.sh
# Then we can use the functions.
#----------------------------------------------------------

double () {
    expr $1 '*' 2
}

square () {
    expr $1 '*' $1
}

sum () {
    expr $1 '+' $2
}

# define an array
input=$(seq 1 6)

echo 'Array input:' $input
double_result=$(map "double" $input)

echo "-----------------------------------"
echo "double_result:" $double_result

square_after_double_output=$(map "square" $(map "double" $input))
echo "square_after_double_output" $square_after_double_output
echo ${square_after_double_output[*]}
echo "-----------------------------------"

sum=$(reduce 0 "sum" $input)
echo "The sum over all elements in array 'input': $sum"
