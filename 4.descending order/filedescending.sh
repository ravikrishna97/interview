#!/bin/bash
if [ -z "$1" ]; then
	echo "usage: $0 /c/Users/Ravindra Krishna/OneDrive/Desktop/Newfolder/descendingorder"
	exit 1
fi

if [! -d "$1"]; then
	echo "Error: $1 is not a valid directory."
	exit 1
fi

cd "$1"

echo "files in '$1' sorted by size (descending):"
find "$1" -type f  -exec du -h {} + | sort -rh
