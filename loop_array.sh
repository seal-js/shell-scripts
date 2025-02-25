#!/bin/bash

# Declare an array and assign three values 

array=(one two three)

files=( "/etc/passwd" "/etc/group" "/etc/hosts" )

limits=( 10, 20, 26, 39, 48)

# Print the complete array
printf "%s\n" "${array[@]}"
echo "-----------"
printf "%s\n" "${files[@]}"
echo "-----------"
printf "%s\n" "${limits[@]}"
echo "-----------"

# loop over array
echo "--> Loop over an array"
for i in "${array[@]}"
do
	echo $i
done

