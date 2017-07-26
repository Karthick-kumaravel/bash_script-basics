#!/bin/bash 
if [ $# -ne 1 ]
then
    echo "Usage - $0  file-name"
    exit 1
fi

if [ -f $1 ]; then
	echo "File found"
else	
	echo "File found"
fi