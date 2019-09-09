#!/bin/bash
#Run smbconnect previously
if [ $# -le 1 ]
then
    echo "Arguments rollnumber, mount location required";
else
sudo mount -t cifs //10.0.0.49/ug/cse/$1 $2 -o username=$1,vers=2.0
fi
