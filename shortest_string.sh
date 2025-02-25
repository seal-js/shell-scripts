#! /bin/bash

filename="bash.string.txt"

echo $filename

# Following syntax deletes the shortest match of $substring from front of $string
# In the first echo statement substring ‘*.’ matches the characters and a dot, 
# and # strips from the front of the string, so it strips the substring “bash.” 
# from the variable called filename.
echo ${filename#*.}

# Following syntax deletes the shortest match of $substring from back of $string
# In second echo statement substring ‘.*’ matches the substring starts with dot,
# and % strips from back of the string, so it deletes the substring ‘.txt’
echo ${filename%.*}

