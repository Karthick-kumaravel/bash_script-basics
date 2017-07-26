#!/bin/bash
echo "Today's date is : `date | awk '{print $1FS$2FS$3 }'`"
echo "Time rightnow is : `date | awk '{print $4 }' `"
echo "The user currently loggedin is : `whoami`"
echo "The current working Dir is :`pwd`"
exit
