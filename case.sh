#!bin/bash
a=$2
case $a in
	 +) echo " adding, $1 + $3 = `expr $1 + $3`";;
	 -) echo "Subtracting, $1 - $3 = `expr $1 - $3`";;
	\*) echo "Mulitlying, $1 * $3 = `expr $1 \* $3`";;
	 /) echo "Dividing, $1 / $3 = `expr $1 / $3`";;
	 *) echo "cant perform the action"
esac