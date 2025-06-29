#!/bin/bash

#script to detect de os and execute the rigth update command

release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

if grep -q "Arch" $release_file
then
	#the host is based on arch, run the pacman update command
	sudo pacman -Syu 1>>$logfile 2>>$errorlog
	if [ $? -ne 0 ]
	then
		echo "An error ocurred, please check the $errorlog file."
	fi
fi

if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file
then
	#the host is based on ubuntu,
	#run the apt version of the command
	sudo apt update 1>>$logfile 2>>$errorlog
	if [ $? -ne 0 ]
	then
                echo "An error ocurred, please check the $errorlog file."
        fi

	sudo apt dist-upgrade -y 1>>$logfile 2>>$errorlog
	if [ $? -ne 0 ]
        then
                echo "An error ocurred, please check the $errorlog file."
        fi
fi

