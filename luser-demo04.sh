#!/bin/bash

# This script creates an accoutn on the local system
# You will be prompted for the account name an password.

# Ask for the user name.
read -p 'Enter the username to create: ' USER_NAME

# Ask for the real name
read -p 'Enter the name of the person whith this account is for: ' COMMENT

# Ask for the password
read -p 'Enter the password to use for the account: ' PASSWORD

# Create the user.
useradd -c "${COMMENT}" -m ${USER_NAME}

# Set the password for the user.
echo ${PASSWORD} | passwd 

# Force password change on first login.
passwd -e ${USER_NAME}