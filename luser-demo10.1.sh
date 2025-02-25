#!/bin/bash

log() {
    # THis function sends a  message to syslog and to standard output if VERBOSE is true.

    # Keyword local defines a variable only inside function block
    #
    # ${@} stores all parameters passed to the function
    # $1 => script name
    # $2 => first parameter passed to the function
    local MESSAGE="${@}"

    if [[ "${VERBOSE}" = 'true' ]]
    then
        echo '-------------------'
        echo "${MESSAGE}"
    fi

    # Write a message into system logfile located in /var/log/syslog (Ubuntu)
    # Other UNIX systems /var/log/messages
    logger -t luser-demo10.sh "${MESSAGE}"
}

backup_file() {
    # This function creates a backup of a file. Returns non-zero status on error.
    local FILE="${1}"

    # Make sure the file exists.
    if [[ -f "${FILE}" ]]
    then
        local BACKUP_FILE="/var/tmp/$(basename ${FILE}).$(date +%F-%N)"
        log "Backing up ${FILE} to ${BACKUP_FILE}"

        # The exit status of the function will be the exit status of cp command.
        # Option -p preserves (keeps) the timestamp and access rights of the original file
        cp -p ${FILE} ${BACKUP_FILE}
    else
        # The file does not exist, so return a non-zero exit status.
        return 1
    fi
}


readonly VERBOSE='true'
log 'Hello' 'Bob!'
log 'This is fun!'

backup_file '/etc/passwd'
# Make a decsion based on the exit status of the function.
if [[ "${?}" -eq '0' ]]
then
    log 'File backup succeeded!'
else   
    log 'File backup failed!'
    exit 1
fi