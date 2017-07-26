#!/bin/bash
for i in `ls *sh`
do 
	a=`cat $i | wc -l` 
	echo "$i contains - $a lines"
    echo "$i contains - $a lines" | awk '{ print$4 }' >> result.txt
done

sum=0
for n in `cat result.txt`
do
    sum=`expr $sum + $n`   
done
	echo""  
    echo "The tolal number of lines are : $sum"
    `> result.txt`	
    exit