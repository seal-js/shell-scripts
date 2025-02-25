#!/bin/bash

str="Bash is Cool"

word="Cool"

position=`expr index "$str" "$word"`

# The result 9 is the index where the word "Cool" starts in str string.
echo $position

echo ${str:$position-1}