#!/bin/bash
function main()
{
echo -n " Please enter your name: "
read a
echo "hello $a"
return
}

function list()
{
ls -lh 
return
}	

function fun ()
{
echo -n "please enter the num to find the bigest num : "
read b

	`sh /bin/kk/others/bigestnum.sh $b`
	 read c
	 echo "$c"
return
}

if [[ $# -eq 0 ]]; then
    echo ""
	echo "please enter the option: "-a" or "-l" "
	echo ""
fi

while getopts ":ABC" xyz
do
	case $xyz in
		 A) main ;;
		 B) list ;;
		 C) fun ;;
		 \?) not valid ;;
	esac
done
exit