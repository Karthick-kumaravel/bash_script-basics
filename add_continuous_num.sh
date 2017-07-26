#!/bin/bash 
a=$1
b=0
c=0
while [[ $a > 0 ]]; do
	b=`expr $a % 10`
	c=`expr $c + $b`
	a=`expr $a / 10`
done
echo " $c"
