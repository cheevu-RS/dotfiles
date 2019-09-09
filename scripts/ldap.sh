#!/bin/bash
if [ $# -le 1 ]
then
    echo "Arguments Your rollnumber,target rollnumber required";
else
ldapsearch -v -x -H  ldap://10.0.0.39 -D CN=$1,OU=2017,OU=UG,OU=CSE,DC=octa,DC=edu -y octa_pwd.txt -W -b dc=octa,dc=edu -s sub "CN=$2"
fi
