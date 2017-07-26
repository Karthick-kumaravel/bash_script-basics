#!/bin/bash
a=$(ls -lh /home/karthick/Downloads)
b=$(ls -lh /home/karthick/Downloads | awk '/total/ { print $2 }' | sed 's/[A-Z]//g')
if [ $b -ne 0 ]
then
echo -e "$a \n"
else
	{
	echo "No files to display"
}
fi
exit 0
