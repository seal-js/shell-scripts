#!/bin/bash

# This script generates a random password.
# This user can set hte password length with -l and add a special character with -s
# Verbose mode can be enabled with -v


usage() {
    echo "Usage: ${0} [-vs] [-l LENGTH]" >&2
    echo 'Generate a random password'
    echo '  -l LENGTH  Specify the password length'
    echo '  -s         Append a special character to the password'
    echo '  -v         Increase verbosity'
    exit 1
}


echo_stdout() {
  local MESSAGE="${@}"

  if [[ "${VERBOSE}" = 'true' ]]
  then 
    echo "${@}"
  fi
}

# Set a default password length
LENGTH=48

while getopts vl:s OPTION
do
    case ${OPTION} in
    v)
        VERBOSE='true'
        echo_stdout 'Verbose mode is on.'
        ;;
    l)
        LENGTH="${OPTARG}"
      
        ;;
    s)
        USE_SPECIAL_CHARACTER='true'
        ;;
    ?)
        usage
        exit 1
        ;;
    esac
done 

echo_stdout 'Generating a password'

PASSWORD=$(date +%s%N${RANDOM}${RANDOM}  | sha256sum | head -c${LENGTH})

# Append a special character if requested to do so.
if [[ "${USE_SPECIAL_CHARACTER}" = 'true' ]]
then
    echo_stdout'Selecting a random special character.'
    SPECIAL_CHARACTER=$(echo '!@#$%^&*()-+=' | fold -w1 | shuf | head -c1)
    PASSWORD="${PASSWORD}${SPECIAL_CHARACTER}"
fi

echo_stdout 'Done.'
echo_stdout 'Here is the password:'

# Display the password
echo "${PASSWORD}"

exit 0