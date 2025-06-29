#!/bin/bash

#check to make sure the user has entered exactly 2 arguments
if [ $# -ne 2 ]
then
	echo "Usage: backup.sh <source_directory> <target_directory>"
	echo "Please try again."
	exit 1
fi

#check to see if rsync is installed.
if ! command -v rsync > /dev/null 2>&1  #see if is installed send the output do dev/null both standard error an output
then
	echo "This script requires rsync to be installed."
	echo "Please use your distribution's package manager to install it and try again."
	exit 2
fi

#capture the current date, and store ir in the format YYYY-MM-DD
current_date=$(date +%Y-%m-%d)

rsync_options="-avb --backup-dir $2/$current_date --delete --dry-run"  #dry-run serve para testar o que a funcao faria mas sem faze-la de facto apos testada deve ser removido

$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log


