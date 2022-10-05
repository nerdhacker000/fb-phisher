#!/bin/bash 
echo "Enter your email:"
read EMAIL
#Automated FTP transfer 
HOST='185.27.134.34' 
USER='epiz_32719615'
PASSWD='ElDdJprQglYAk'
FILE='file.txt'

ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
binary
put $FILE
quit
END_SCRIPT
exit 0
