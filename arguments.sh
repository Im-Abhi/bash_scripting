#!/bin/bash

# example usage:    ./arguments.sh <directory-path>
lines=$(ls -lh $1 | wc -l)

# $# represents the number of arguments passed to a script or function
# $0 represents the script name
if [ $# -ne 1 ]
then
	echo "This script requires exactly one directory path passed to it."
	echo "Please try again."
	exit 1
fi

echo "You have $(($lines-1)) objects in the $1 directory."
