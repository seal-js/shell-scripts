#!/bin/bash

colors=("black" "blue" "light green")

if grep -q 'black' <<< "${colors[@]}"
then
    echo 'match'
fi

# But it is not so good becaus it should not find 'light green'
if grep -q 'green' <<< "${colors[@]}"
then
    echo 'should not match, but does'
fi

# Another way ...
printf '%s\n' "${colors[@]}" | grep -x -q "black"

[ ${colors[blue]+abc} ] && echo "blue exists"
[ ${colors[black]+abc} ] && echo "black exists"
[ ${colors[green]+abc} ] && echo "WRONG result!!! green exists" # not correct

value="black"
if [[ " ${colors[@]} " =~ " ${value} " ]]; then
   echo found $value
fi

value="light green"
if [[ " ${colors[@]} " =~ " ${value} " ]]; then
   echo found $value
fi