#!/bin/sh

writefile=$1
writestr=$2

if [ -z "$1" ] || [ -z "$2" ];
then 
    echo "Error: arguments is missing"
    exit 1
fi

dirpath=$(dirname $writefile)
# echo $dirpath

if [ ! -d "$dirpath" ]; then
    echo "Directory does not exist, creating it: $dirpath"
    mkdir -p "$dirpath" || { echo "Error: Could not create directory $dirpath"; exit 1; }
fi

# Create or overwrite the file with writestr
echo "$writestr" > "$writefile" || { echo "Error: Could not create or write to $writefile"; exit 1; }