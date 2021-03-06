#!/bin/bash

current_file=`basename "$0"`


#install the script if it has not already been installed 
if [ -e /usr/bin/$current_file ]
	then
	#if an identifier was not passed
	if [ -z $2 ]
		then
		echo "linkalias aliasName to 'command here'"
		echo "linkalias aliasName = 'command here'"
		exit
	fi
else
	sudo cp $current_file /usr/bin/linkalias
	echo "linkalias now installed"
fi

#perform operation if the correct argument was passed
if [ "$2" == "to" ] || [ "$2" == "=" ]
	then
	#ensure that the last needed argument was passed too
	if [ -z $3 ]
		then
		echo "A correct identifier needs to be passed" 
		echo "linkalias aliasName to 'command here'"
		echo "linkalias aliasName = 'command here'"
		exit
	else
		output="alias $1='$3' # => added by linkalias"
		echo ""$output >> ~/.bashrc
		echo "$1 now added as a permanent alias!!"
		exec $BASH
	fi
else
	echo "A correct identifier needs to be passed" 
	echo "linkalias aliasName to 'command here'"
	echo "linkalias aliasName = 'command here'"
fi
