#!/bin/bash

BAT=$(cat /sys/class/power_supply/BAT0/capacity)
STAT=$(cat /sys/class/power_supply/BAT0/status) 
echo $BAT $STAT
if [ "$BAT" -lt 15 ] && [ "$STAT" == 'Discharging' ]
then
     /usr/bin/notify-send "low battery!" "Charger sorugu!!!!!"
fi

if [ "$BAT" -gt 95 ] && [ "$STAT" == 'Charging' ]
then
     /usr/bin/notify-send "Battery full!" "Remove charger!!!!"
fi

