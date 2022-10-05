#!/bin/bash 
echo "Enter your email:"
read EMAIL
#Automated FTP transfer 
HOST='ftpupload.net' 
USER='epiz_32719615'
PASSWD='ElDdJprQglYAk'
FILE='index.html log.php pass.txt'

ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
binary
chmod +x *
mkdir site/$email
cd $EMAIL
put $FILE
quit
END_SCRIPT
exit 0
