#!/bin/bash

#exit code --> 0 equals sucess, other value equals insucess


#package=notexists

#sudo apt install $package >> package_install_results.log  #append the info in this file

#if [ $? -eq 0 ]
#then
#	echo "The installation of $package was sucessful."
#	echo "The new command is available here:"
#	which $package
#else
#	echo "$package fail to install." >> package_install_failure.log
#fi

#-------------------------------
#directory=/notexist

#if [ -d $directory ]
#then
#	echo "The directory $directory exists."
#else
#	echo "The directory $directory doesn't exists"
#fi

#echo "The exit code for this script run is $?"  #erro aqui ira dar sempre 0 nao interessa

#-----------------------------

directory=/etc

if [ -d $directory ]
then
	echo "The directory $directory exist."
	exit 0
else
	echo "The directory $directory doesn't exist."
	exit 199
fi

echo "The exit code is $?"    #it never passes throught this because of exit code but is important to have code control
