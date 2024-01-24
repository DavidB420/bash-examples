#!/bin/bash

declare userVar

userVar=`cat $1 $2`

userVar=`echo "$userVar" | sort -du`

userVar=`echo "$userVar" | cut -d"	" -f2`

echo "$userVar" > output.txt

cat -n output.txt

