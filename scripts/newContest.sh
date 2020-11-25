#!/bin/bash
if [ $# -lt 1 ]
then
    echo "Contest number required"
else
mkdir -p "/home/rsrs/CP/cf/$1"
cp /home/rsrs/CP/template.cpp  "/home/rsrs/CP/cf/$1/A.cpp"
cp /home/rsrs/CP/template.cpp  "/home/rsrs/CP/cf/$1/B.cpp"
cp /home/rsrs/CP/template.cpp  "/home/rsrs/CP/cf/$1/C.cpp"
cp /home/rsrs/CP/template.cpp  "/home/rsrs/CP/cf/$1/D.cpp"
fi
