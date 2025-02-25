#!/bin/bash


# simple echho example
echo "Learn bash"

# echo without trailing Newline
echo -n "LEARN BASH"

# echo interpreting backslash escaped characters
echo 
echo -e "ESCAPED NEWLINE\nBASH"

echo -E "ESCAPED NEWLINE\nBASH"

# this is a single line comment in bash
echo Learn Bash Scripting
 
a=2 # this is also a comment, but after the command in same line
b=4
# addition : this is another single line comment
c=$(($a + $b))
 
# echo result to console
echo $a + $b = $c