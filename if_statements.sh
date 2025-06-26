#!/bin/bash

command=/usr/bin/htop

if command -v $command > /dev/null
then
	echo "$command exists"
else
	echo "$command not exists"
	sudo apt update && sudo apt install -y htop
fi

$command

