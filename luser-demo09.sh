#!/bin/bash

# This script demonstrates the case statement

# if [[ "${1}" == 'start' ]]
# then
#     echo 'Starting.'
# elif [[ "${1}" == 'stop' ]]
# then
#     echo 'Stopping.'
# elif [[ "${1}" == 'status' ]]
# then
#     echo 'Status.'    
# else
#     echo 'Supply a valid option.' >&2
#     exit 1
# fi

echo "Argument: ${1}"
lowerstr=$(echo ${1} | tr '[:upper:]' '[:lower:]')
echo "Converted to lower case: $lowerstr"

# case "$lowerstr" in
#     start) 
#         echo 'Starting.'
#     ;;
#     stop) 
#         echo 'Stopping.'
#     ;;
#     status|state|--status|--state) 
#         echo 'Status:'
#     ;;
#     *)
#       echo 'Supply a valid option.' >&2
#       exit 1
#     ;;
# esac

case "$lowerstr" in
    start) echo 'Starting.' ;;
    stop)  echo 'Stopping.' ;;
    status|state|--status|--state) echo 'Status:' ;;
    *)
      echo 'Supply a valid option.' >&2
      exit 1
    ;;
esac