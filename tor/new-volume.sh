#!/bin/sh

if [[ -z $1 ]]; then
	echo "Create DIRECTORY via \"./new-volume.sh DIRECTORY\""
	echo "Example: \"sudo ./new-volume.sh ../volumes/tor/etherpad\""
else
	echo "Creating directory $1"
	mkdir $1
	chmod 700 $1
	chown 100:100 $1
fi
