#!/bin/bash

#***************************************************
# CREATES FOLDER STRUCTURE FOR PROJECT

#	backup 			- Store proj backup	
#	code			- Proj code
#	docs			- Proj docs
#	tools 			- Tools req for Proj
#	tmp				- Temp files
#	accounts.txt
#	commands.txt
#	tasks.txt

#***************************************************
read -p "Enter Project Name : " PROJ_NAME

if [ -z $1 ] && [ -z $PROJ_NAME ]
	then
	echo "Please specify Project-Name"
	exit 1
fi

FOLDERS="backup code docs tools tmp"
FILES="accounts commands tasks"

#CREATE FOLDERS
for folder in $FOLDERS
do
	path="$PROJ_NAME/$folder"	
	mkdir -p $path
done

#CREATE FILES 
for file in $FILES
do
	path="$PROJ_NAME/$file.txt"
	#$echo "$PATH"
	touch $path
done