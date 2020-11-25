i3configfile="/home/rsrs/.config/i3/config"
if grep -q Mod1 $i3configfile ; then
    # Mod1 found, changing to Mod4
    sed -i 's/Mod1/Mod4/g' $i3configfile

else
    # Mod4 found, changing to Mod1
    sed -i 's/Mod4/Mod1/g' $i3configfile
fi
i3-msg reload

