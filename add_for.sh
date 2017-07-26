#!/bin/bash -x
sum=0
for n in $*
do
	sum=`expr $sum + $n`	
done
echo "$sum"
exit 0