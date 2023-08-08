#! /bin/bash

filename="Path of the bash is /bin/bash"


echo "String: '${filename}"
echo 'Search pattern: bash'
echo "After Replacement:" ${filename//bash/sh}