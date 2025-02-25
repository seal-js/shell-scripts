# Bash Local Variable is used to override a global bash variable, in local scope, if already present with the same name.

#!/bin/bash
 
# bash variable
SHELL="Unix"
 
function bashShell {
    # bash local variable
    local SHELL="Bash"
    echo $SHELL
    echo $1
}
 
echo $SHELL
bashShell "Windows"
echo $SHELL
