#!/bin/bash

# Alternative function declaration: function log { ... }
log() {
    local VERBOSE="${1}"
    shift

    # Keyword local defines a variable only inside function block
    #
    # ${@} stores all parameters passed to the function
    # $1 => script name
    # $2 => first parameter passed to the function
    local MESSAGE="${@}"

    if [[ "${VERBOSE}" = 'true' ]]
    then
        echo '-------------------'
        echo "$0"
        echo "$1"

        echo "${MESSAGE}"
    fi

    # Write a message into system logfile located in /var/log/syslog (Ubuntu)
    # Other UNIX systems /var/log/messages
    logger -t luser-demo10.sh "${MESSAGE}"
}

VERBOSITY='true'
log "${VERBOSITY}" 'Hello' 'Bob!'
log 'This is fun!'


readonly VERBOSE='true'
log_next() {
    
    local MESSAGE="${@}"

    if [[ "${VERBOSE}" = 'true' ]]
    then
        echo '-------------------'
        echo "${MESSAGE}"
    fi
}

log_next 'Good Morning!'
