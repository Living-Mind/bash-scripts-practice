#!/bin/bash
#

if [[ $# -ne 2 ]]
then
	echo "Only two arguments are required!" >&2
	exit 1
fi

if [[ $1 == "-n" ]]
then
	whoami > $2
elif
	[[ $1 == "-l" ]]
then
	pwd > $2
elif
	[[ $1 == "-t" ]]
then
	date > $2
elif
	[[ $1 == "-c" ]]
then
	cal > $2
else
	echo "Invalid argument" >&2
	exit 1
fi
