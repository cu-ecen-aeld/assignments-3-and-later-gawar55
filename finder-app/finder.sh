#!/bin/sh

filesdir=$1
searchstr=$2

if [ -z "$1" ];
then 
    echo "Error: First argument is missing."
    exit 1
fi

if [ -z "$2" ];
then 
    echo "Error: second argument is missing."
    exit 1
fi

num_files=$(find "$filesdir" -type f | wc -l)
echo $num_files

num_matching_lines=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

# Print the results
echo "The number of files are $num_files and the number of matching lines are $num_matching_lines"