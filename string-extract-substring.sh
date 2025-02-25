#!/bin/bash

foss="Fedora is a free operating system"

# Therefore, to extract the substring “Fedora”, you will use 0 as the starting 
# position and you will extract 6 characters from the starting position:
echo ${foss:0:6}

# For example, to extract the substring “free operating system” 
#from the foss string; we only need to specify the starting position 12:

echo ${foss:12}