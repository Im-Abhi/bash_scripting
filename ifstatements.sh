#!/bin/bash

mynum=20

if [ $mynum -eq 20 ]
then
        echo "The condition is true."
else
        echo "The variable doesnot equal to 20"
fi

# checking for a file in the filesystem [-f for file, -d for directory]
if [ -f ~/sample.txt ]
then
        echo "The file exists."
else
        echo "The file doesn't exists."
fi

# checking for the existance of an application of a utility command/ package

#if [ -f $command ]
# command=/usr/bin/htop         # for -f

# command called command to check whether a command exists or not [  ] for test command

command=htop                    # for command -v $command
if command -v $command
then
        echo "$command is available let's run it..."
else
        echo "$command is NOT available, installing it..."
        sudo apt update && sudo apt install -y $command
fi

$command
