#!/bin/bash

if [ $# -lt 2 ]
then
    echo "Invalid number of arguments!"
    exit 1
fi

writefile=$1
writestr=$2
dir_path=$(dirname "$writefile")
echo "$dir_path"

# Check if directory exists, if not, create it
if [ ! -d "$dir_path" ]; then
    mkdir -p "$dir_path"
fi

echo "$writestr" > "$writefile"