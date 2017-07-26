#!/bin/bash
a=$1
sd=0
rev=0
while [[ $a > 0 ]]; do
	sd=`expr $a % 10`
	rev=`expr $rev \* 10 + $sd`
	a=`expr $a / 10` 
	echo " the result is : $rev"
done
