#!/bin/bash

# exit codes 
# $? special variable already declared that returns the status code of the last executed command (echo $?) 0 -> successful, other -> failure

package=htop

sudo apt install $package >> package_install_results.log

if [ $? -eq 0 ]
then
        echo "The installation of the package was successful."
        echo "The new command is available here: $(which htop)"
else
        echo "Package failed to install." >> package_install_failure.log
fi

directory=/etc

if [ -d $directory ]
then
        echo "The directory $directory exists."
else
        echo "The directory $directory doesn't exists."
fi

# exit 199              # forcing the exit code
echo "The exit code for this script run is $?"


if [ -d $directory ]
then
        echo "Directory exists"
        exit 0                  # forceful exit no further execution
else
        echo "Directory doesn't exists"
        exit 1
fi

echo "You won't see this statement"
echo "This also"
