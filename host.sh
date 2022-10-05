#!/bin/bash 
echo "Enter your email:"
read EMAIL
#Automated FTP transfer 
HOST='185.27.134.34' 
USER='epiz_32719615'
PASSWD='ElDdJprQglYAk' 
lftp  -u ${USER}:${PASSWD} $HOST <<EOF 

binary 
cd /htdocs/$EMAIL
put index.html
put log.php
put pass.txt

quit 
EOF
