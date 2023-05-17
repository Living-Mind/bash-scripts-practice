#!/bin/bash

if [[ $1 == "-n" ]];
then
	echo "$USER" > $2

elif [[ $1 == "-l" ]];
then
	echo "$PWD" > $2

elif [[ $1 == "-t" ]];
then
	echo "$(date)" > $2

elif [[ $1 == "-c" ]];
then
	echo "$(cal)" > $2
else
	echo "Invalid argument"
fi
