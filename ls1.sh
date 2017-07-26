#!/bin/bash
a=$(ls -lh /home/karthick/Desktop/1)
b=$(ls -lh /home/karthick/Desktop/1 | wc -l)
if [ $b -ge 2 ]
then
echo -e "$a \n"
else
	{
	echo "No files to display"
}
fi
exit 0
