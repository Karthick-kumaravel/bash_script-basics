#!/bin/bash	
a=$1
b=$2
c=$3
d=`expr $1 + $3`
if [ $b == "+" ]; then
	echo "sum of $1 + $3 = $d"
else	
	echo "Only addition alllowed"
fi
	exit 1