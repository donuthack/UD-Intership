#!/bin/bash
for file
do
	if [ -f $file ] ; then
		ls -l $file
	elif [ -d $file ] ; then
		echo "$file is a directory"
	elif [ ! -e $file ] ; then
		echo "$file does not exist"
	else
		echo "I don't know what to do with $file"
	fi	
	echo ""
done	