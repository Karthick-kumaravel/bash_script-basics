#!/bin/bash -x
a=$1
b=$2
if [[ $# -ne 2 ]]; then
	echo "please provide 2 real num X and Y"
else
	c=`echo $1+$2 | bc`
	echo "$c"
fi