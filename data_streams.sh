#!/bin/bash

# find /etc -type f 2 > /dev/null ( move any standard error (2) to a special file called /dev/null which is a blackbox anything moved or copied into it is comppletely wiped out.)
# find /etc -type f > /dev/null ( will show the error messsage because everything that was standard output was moved into /dev/null )
# find /etc -type f 1> /dev/null (will also do same as above 1 is implicit here)
# find /etc -type f &> /dev/null (send both standard output and standard error)
# find /etc -type f 1> find_results.txt 2>find_errors.txt

release_file=/etc/os-release
logfile=/var/log/updates.log
errorlog=/var/log/update_errors.log

echo "Please enter your name: "
read myname
echo "Your name is $myname"

if grep -q "Arch" $release_file
then
        # The host is based on Arch, run the pacman update command
        sudo pacman -Syu 1>> $logfile 2>>$errorlog
        if [ $? -ne 0]
        then
                echo "An error occured, please check $errorlog file."
        fi
fi

if grep -qE "Debain|Ubuntu" $release_file
then
        # The host is based on Debain or Ubuntu,
        # run the apt version of the command
        sudo apt update 1>> $logfile 2>> $errorlog
        if [ $? -ne 0]
        then
                echo "An error occured, please check $errorlog file."
        fi
        sudo apt dist-upgrade 1>> $logfile 2>> $errorlog
        if [ $? -ne 0]
        then
                echo "An error occured, please check $errorlog file."
        fi
fi
