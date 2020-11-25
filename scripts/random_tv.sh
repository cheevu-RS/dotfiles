#!/bin/bash
if [ -s ~/.config/scripts/tivo ]
then
    echo "next up"
    myVid=$(cat ~/.config/scripts/tivo |head -n 1)
    tail -n +2 ~/.config/scripts/tivo > ~/.config/scripts/tivo_new
    ls ~/.config/scripts |grep tivo
    mv ~/.config/scripts/tivo_new ~/.config/scripts/tivo
    echo $myVid
    vlc "$myVid"
else
    echo "You have seen 'em all"
    cat ~/.config/scripts/tivo
    find /media/Series/fun -type f -name *.m*|shuf   > ~/.config/scripts/tivo    
    cat ~/.config/scripts/tivo
fi
