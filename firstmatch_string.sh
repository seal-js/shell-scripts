#! /bin/bash

filename="bash.string.txt"

# It matches the pattern in the variable $string, and replace only the first match
# of the pattern with the replacement.
echo "String: '${filename}"
echo 'Search pattern: str*.'
echo "After Replacement:" ${filename/str*./operations.}