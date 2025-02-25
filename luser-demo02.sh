#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is the root user or not.

# Display the UID
echo "Your UID is ${UID}"

# Display the username
USER_ID=$(id -un)
echo "Your username is '${USER_ID}"

# Display if the user is the root user or not
if [[ "${UID}" -eq 0 ]]
then
    echo 'You are the root'
else
    echo 'You are not the root'
fi

echo "----------------------------"
myname=${USER_ID}
echo "Your name has a length of ${#myname}"
longname='Harald von Annaheim'
echo $longname
echo ${longname:11}

