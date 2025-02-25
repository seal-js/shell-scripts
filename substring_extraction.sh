#!/bin/bash

# ${string:position}
#
#  Extracts substring from $string at $position.
#
#  If the $string parameter is "*" or "@", then this extracts the positional parameters, [1] starting at $position.
#
#  ${string:position:length}
#
#    Extracts $length characters of substring from $string at $position.
#
#

stringZ=abcABC123ABCabc
#       0123456789.....
#       0-based indexing.

echo ${stringZ:0}                            # abcABC123ABCabc
echo ${stringZ:1}                            # bcABC123ABCabc
echo ${stringZ:7}                            # 23ABCabc

echo ${stringZ:7:3}                          # 23A
                                             # Three characters of substring.



# Is it possible to index from the right end of the string? No!
    
echo ${stringZ:-4}                           # abcABC123ABCabc
# Defaults to full string, as in ${parameter:-default}.
# However . . .

echo ${stringZ:(-4)}                         # Cabc 
echo ${stringZ: -4}                          # Cabc
# Now, it works.
# Parentheses or added space "escape" the position parameter.