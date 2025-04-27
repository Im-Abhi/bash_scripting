#!/bin/bash

# universal update script v2 (with functions)

release_file=/etc/os-release
logfile=/var/log/updates.log
errorlog=/var/log/update_errors.log

check_exit_status() {
        if [ $? -ne 0 ]
        then
                echo "An error occured, please check $errorlog file."
        fi
}

if grep -q "Arch" $release_file
then
        # The host is based on Arch, run the pacman update command
        sudo pacman -Syu 1>> $logfile 2>>$errorlog
        check_exit_status
fi

if grep -qE "Debain|Ubuntu" $release_file
then
        # The host is based on Debain or Ubuntu,
        # run the apt version of the command
        sudo apt update 1>> $logfile 2>> $errorlog
        check_exit_status
        
        sudo apt dist-upgrade -y 1>> $logfile 2>> $errorlog
        check_exit_status
fi
