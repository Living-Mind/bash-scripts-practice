#!/bin/bash
#

SUM=0
REGEX="^[-+]?[0-9]+$"

if [[ $# -eq 0 ]]
then
	echo "At least one whole number is needed!" >&2
	exit 1
fi

for N in $@
do
	if [[ ! $N =~ $REGEX ]] 
	then
		echo "Input only whole numbers" >&2
		exit 1
	else
		((SUM += N))
	fi
done

echo $SUM
