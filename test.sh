#!/bin/bash
cat "$1" > /tmp/file.$$   2>/tmp/file0.$$

grep "*"  /tmp/file.$$    >/tmp/file0.$$

if [ $? -eq 1 ]
then
    echo "Required i.e. $1/*"
else
    echo "Symbol is Not required"    
fi    