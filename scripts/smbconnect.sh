#!/bin/bash
#Connect via smbclient:
if [ $# -le 0 ]
then
    echo "Argument rollnumber required";
else
smbclient //10.0.0.49/ug/ -U $1 -W OCTA
fi
