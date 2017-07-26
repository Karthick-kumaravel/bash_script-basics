#!/bin/bash
for i in `cat users.txt`
do
imapsync --host1 imap.gmail.com --user1 $i --password1 Sixth*54321 --host2 192.168.1.239 --user2 $i --password2 123456 --syncinternaldates --ssl1 --ssl2 --noauthmd5 --split1 100 --split2 100 --exclude All Mails --useheader 'Message-ID'
done