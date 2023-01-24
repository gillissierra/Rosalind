#!/bin/bash

# Finds the Hamming distance between two strings saved in a text file

mapfile -t strings < $1

string1=${strings[0]}
string2=${strings[1]}
dist=0

for (( i=0; i<=${#string1}; i++ ))
do
	if [ "${string1:$i:1}" != "${string2:$i:1}" ]
	then
		let dist++
	fi
done
echo $dist
