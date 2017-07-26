#!/bin/bash
    if [ $# -ne 3 ]
    then
	echo "$0: number1 number2 number3 are not given" >&2
        exit 1    
    fi
    n1=$1
    n2=$2
    n3=$3
    if [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ]
    then
	echo "$n1 is Bigest number"
    elif [ $n2 -gt $n1 ] && [ $n2 -gt $n3 ]         
    then
	echo "$n2 is Bigest number"
    elif [ $n3 -gt $n1 ] && [ $n3 -gt $n2 ]         
    then
        echo "$n3 is Bigest number"  
    fi    