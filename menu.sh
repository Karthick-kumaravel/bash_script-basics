#!/bin/bash
while :
do
echo""
echo "===================================================="
echo "                     Menu                           "
echo "===================================================="
echo "[1] Date/time "
echo "[2] Calendar"
echo "[3] Delete file"
echo "[4] To Exit"
echo ""
echo -n "Please enter the option:"
read option
if [ $option == 3 ]	
	then
	echo -n "Please select the path of the file to be deleted : "
	read a
	`rm -vrf $a >> results.txt`
else
case $option in
 	1 ) echo "`date`";;
	2 ) echo "`cal`";;
	4 ) exit 0;;
esac 
fi
done