#!/bin/bash

if [ $# -lt 2 ]
then
    echo "Invalid number of arguments!"
    exit 1
fi

filesdir=$1
searchstr=$2

if [ -d "$filesdir" ]; then
    number_of_files=$(find "$filesdir" -type f | wc -l)
    number_of_find_lines=$(grep -r "$searchstr" "$filesdir/"* |wc -l)
    echo "The number of files are $number_of_files and the number of matching lines are $number_of_find_lines"
else
    echo "Directory does not exist."
    exit 1
fi