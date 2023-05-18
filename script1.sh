#!/bin/bash

read -p "Enter three whole numbers: " NUM1 NUM2 NUM3
#read -p "Enter first number:" NUM1
#read -p "Enter second number:" NUM2
#read -p "Enter third number:" NUM3

REGEX='^[-+]?[0-9]+$'
if [[ $NUM1 =~ $REGEX ]] && [[ $NUM2 =~ $REGEX ]] && [[ $NUM3 =~ $REGEX ]];
then

	if [[ $NUM1 -gt $NUM2 ]] && [[ $NUM1 -gt $NUM3 ]];
	then
		echo "$NUM1"
	elif [[ $NUM2 -gt $NUM1 ]] && [[ $NUM2 -gt $NUM3 ]];
	then
		echo "$NUM2"
	else
		echo "$NUM3"
	fi

else
	echo "Error: Input only whole numbers!" >&2
	exit 1
fi
