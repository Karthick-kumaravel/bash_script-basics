#!/bin/bash
n=$1
while [[ $n -ne 0 ]]; do
	sd=`expr $n % 10` 
	echo -e "$sd" >> file.txt
	n=`expr $n / 10`
	done
cat file.txt
