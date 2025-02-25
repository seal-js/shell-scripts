#!/bin/bash

# Create a password with pwgen
my_pwd=`pwgen -N 4 -s -y`
echo $my_pwd
