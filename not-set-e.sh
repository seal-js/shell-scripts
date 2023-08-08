#!/bin/bash
 
# In this script we have 3 commands. The 2nd fails, but it does not bother the main script.
# It keeps working and executes the 3rd command. 
echo "Start"
 
ls some-incorrect-path
 
echo "Still working"