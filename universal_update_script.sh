#!/bin/bash

if [ -d /etc/pacman.d ]
then
        # The host is based on Arch, run the pacman update command
        sudo pacman -Syu
fi

if [ -d /etc/apt ]
then
        # The host is based on Debain or Ubuntu,
        # run the apt version of the command
        sudo apt update
        sudo apt dist-upgrade
fi



# better version
release_file=/etc/os-release

if grep -q "Arch" $release_file
then
        # The host is based on Arch, run the pacman update command
        sudo pacman -Syu
fi

if grep -qE "Debain|Ubuntu" $release_file
then
        # The host is based on Debain or Ubuntu,
        # run the apt version of the command
        sudo apt update
        sudo apt dist-upgrade
fi
