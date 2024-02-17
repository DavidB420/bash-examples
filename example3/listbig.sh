#!/bin/bash


if [ ! $# -eq 2 ]
then
	echo $0: Incorrect number of arguments
	exit 1
fi

if [ ! -d $1 ]
then
       	echo $1: Not a folder
       	exit 2
fi

if [[ ! $2 =~ ^[0-9]+$ ]]
then
	echo $2: Not a number
	exit 2
fi

for i in "$1"/*
do
	declare -i fileSize=`stat --printf="%s" $i`
	if [ $fileSize -ge $2 ]
	then
		echo $i: $fileSize
	fi
done
