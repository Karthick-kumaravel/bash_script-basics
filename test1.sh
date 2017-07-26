show_datetime()
{
   dialog --backtitle "Linux Shell Tutorial" --title "System date and Time" --infobox "Date is `date`" 3 40 
   read
   return
}

show_cal()
{
   cal > menuchoice.temp.$$
   dialog --backtitle "Linux Shell Tutorial" --title "Calender" --infobox "`cat menuchoice.temp.$$`" 9 25 
   read
   rm -f menuchoice.temp.$$
   return
}

delete_file()
{
 dialog --backtitle "Linux Shell Tutorial" --title "Delete file"\
 --inputbox "Enter directory path (Enter for Current Directory)"\
 10 40  2>/tmp/dirip.$$
 rtval=$?
 
 case $rtval in
     1) rm -f /tmp/dirip.$$ ; return ;;
     255) rm -f /tmp/dirip.$$ ; return ;;
 esac
 
 mfile=`cat /tmp/dirip.$$`
 
 if [ -z $mfile ]
 then
     mfile=`pwd`/*
 else
     grep "*" /tmp/dirip.$$
     if [ $? -eq 1 ]
     then
	mfile=$mfile/*
     fi    
 fi
 
 for i in $mfile 
 do
    if [ -f $i ]
    then
	echo "$i Delete?" >> /tmp/finallist.$$
    fi	
 done    


 dialog --backtitle "Linux Shell Tutorial" --title "Select File to Delete"\
 --menu "Use [Up][Down] to move, [Enter] to select file"\
 20 60 12 `cat /tmp/finallist.$$` 2>/tmp/file2delete.tmp.$$
 
 rtval=$? 
 
 file2erase=`cat /tmp/file2delete.tmp.$$`
 
 case $rtval in 
     0) dialog --backtitle "Linux Shell Tutorial" --title "Are you shur"\
      --yesno "\n\nDo you want to delete : $file2erase " 10 60
      
        if [ $? -eq 0 ] ; then
	  rm -f  $file2erase         
         if [ $? -eq 0 ] ; then
            dialog --backtitle "Linux Shell Tutorial"\
	    --title "Information: Delete Command" --infobox "File: $file2erase is Sucessfully deleted,Press a key" 5 60
	    read
	   else
	    dialog --backtitle "Linux Shell Tutorial"\ 
	    --title "Error: Delete Command" --infobox "Error deleting File: $file2erase, Press a key" 5 60
            read       
           fi
	else
	  dialog --backtitle "Linux Shell Tutorial"\
	  --title "Information: Delete Command" --infobox "File: $file2erase is not deleted, Action is canceled, Press a key" 5 60
	  read
	fi
     ;;
    1)  rm -f /tmp/dirip.$$ ; rm -f /tmp/finallist.$$ ; 
        rm -f /tmp/file2delete.tmp.$$; return;;
    255) rm -f /tmp/dirip.$$ ;  rm -f /tmp/finallist.$$ ;
         rm -f /tmp/file2delete.tmp.$$; return;;
esac
 rm -f /tmp/dirip.$$
 rm -f /tmp/finallist.$$
 rm -f /tmp/file2delete.tmp.$$
 return
}



while true
do
dialog --clear --title "Main Menu" \
        --menu "To move [UP/DOWN] arrow keys \n\
[Enter] to Select\n\
        Choose the Service you like:" 20 51 4 \
        "Date/time"       "To see System Date & Time" \
        "Calender"        "To see Calaender"\
	"Delete"          "To remove file"\
	"Exit"            "To exit this Program" 2> menuchoice.temp.$$

retopt=$?

choice=`cat menuchoice.temp.$$`

rm -f menuchoice.temp.$$

case $retopt in
    0)
	case $choice in
	    Date/time) show_datetime ;;
	    Calender) show_cal ;;
	    Delete) delete_file ;;
	    Exit) exit 0;; 
        esac    
      ;;	
     1) exit ;;
     255) exit ;;
 esac
done
clear