#!/bin/bash
#

SUM=0
NNUMS=0
REGEX="^[-+]?[0-9]+$"
PREGEX="^[+]?[0-9]+$"
NREGEX="^-[0-9]+$"

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

	elif [[ $N =~ $PREGEX ]]
	then
		((SUM += N))
	elif [[ $N =~ $NREGEX ]] && [[ ! $N -eq 0 ]]
	then
		((NNUMS += 1))
	fi
done

echo -e "Sum of positive numbers: $SUM.\nNumber of negative numbers: $NNUMS."
