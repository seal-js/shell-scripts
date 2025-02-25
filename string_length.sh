#!/bin/bash

stringZ=abcABC123ABCabc

echo "String ${stringZ} has the length:"
echo ${#stringZ}
echo `expr length $stringZ`
echo `expr "$stringZ" : '.*'`