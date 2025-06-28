#!/bin/bash

#script to detect de os and execute the rigth update command

release_file=/etc/os-release

if grep -q "Arch" $release_file
then
	#the host is based on arch, run the pacman update command
	sudo pacman -Syu
fi

if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file
then
	#the host is based on ubuntu,
	#run the apt version of the command
	sudo apt update
	sudo apt dist-upgrade
fi

