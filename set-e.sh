#!/bin/bash -e

# We can set the -e either on the sh-bang line or with the set -e command.
# We can turn it off using the set +e command. 
# Here, as you can see, after the 2nd command fails, the whole script stops 
# and the exit-code of the script is set to a non-zero number indicating failure. 
echo "Start"
 
ls some-incorrect-path
 
echo "Still working"