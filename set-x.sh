#!/bin/bash -x

#------------------------------------------------------------------------------
# Setting the -x tells Bash to print out the statements as they are being executed.
# It can be very usefule as a logging facility and for debugging when you need
# to know which statements were execute and in what order.
# It can be enabled on the command line or on the sh-bang line by providing -x 
# or by the set -x statement.
# It can be disabled using the set +x statement. 
#------------------------------------------------------------------------------

name="Foo"
echo $name
    
set +x
    
age=42
echo $age
    
    
set -x
    
language=Bash
echo $language