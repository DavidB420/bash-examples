#!/bin/bash

if [ $# -eq 0 ]
then 
	echo $0: Not enough arguments
	exit 1
fi

for i in $@
do
	if [ ! -d $i ]
	then
        	echo $i: Not a folder
        	exit 2
	fi

	declare -a x

	for j in "$i"/*
	do
		if [ -h $j ]
		then
			echo $(pwd)"$subfolder"/$j 
		fi
	done
done

