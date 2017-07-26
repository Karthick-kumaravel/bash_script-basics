#!/bin/bash
if [ $# -ne 3 ]; 
	then
	echo "3 numbers required"
	exit 1
fi
a=$1
b=$2
c=$3
if [ $a -gt $b ] && [ $a -gt $c ]; 
then
echo "$a is greater than all"
elif [ $b -gt $a ] && [ $b -gt $c ]; 
then
echo "$b is greater than all"
elif [ $c -gt $a ] && [ $c -gt $b ];
then
echo "$c is greater than all"
fi