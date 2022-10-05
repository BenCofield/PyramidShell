#!/bin/zsh

if [[ $1 == "" ]]; then
	echo "Error: no argument given"
	echo "Usage: "
	echo "       ./pyramid.sh [#rows]"
	
	exit
fi

spaces=$(($1 * 2))
for ((i=0;i<$1;i++)) do
	
	for ((j=0;j<$spaces;j++)) do
		echo -n " "
	done

	for ((k=0;k<$(($i * 2 + 1));k++)) do
		echo -n "*"
	done
	
	echo ""
	spaces=$(($spaces - 1))
done
