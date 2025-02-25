#!/bin/bash
_file="$1"

# if filename not supplied at the command prompt
# display usae message and die
[ $# -eq 0 ] && { echo "Usage: $0 filename"; exit 1; }

echo "Script name: $0"
echo "\$1 = $1, so \$_file set to $1"

# if file not found, display an error and die
[ ! -f "$_file" ] && { echo "$0: $_file file not found."; exit 2; }

# if we are here, means everything is okay
echo "Processing $_file..."