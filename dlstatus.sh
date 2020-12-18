#!/bin/bash

SERVERS="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11"

for x in $SERVERS ; do
	ping -c1 -w1 $x>/dev/null
	if [ $? = 0 ] ; then
	echo "$x : alive";

	else
	echo "$x : dead";
	fi
done

exit 0
