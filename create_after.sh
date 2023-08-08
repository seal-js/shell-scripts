#!/bin/bash

# set -x

_file="$1"
_nodeVersion="$2"

# if filename not supplied display usage message and die
[ $# -ne 2 ] && { echo "Usage: $0 <filename> <NodeJS version>"; exit 1; }

echo `pwd`
echo "Script name: $0"
echo "\$1 = $1"
echo "\$2 = $2"

# if file not found, display an error and die
if [ -f "$_file" ] 
then
  echo "$0: $_file already exists."
  exit 2
fi

echo "Create file $_file..."

echo "cd \$PLSSV" >> $_file
echo "tar xzvf ipp-server.tar.gz" >> $_file
echo "tar xzvf node-v${_nodeVersion}-linux-x64.tar.gz" >> $_file
echo "tar xzvf pm2.tar.gz" >> $_file
echo "exit 0" >> $_file

chmod 755 $_file

exit 0