#!/bin/bash
x=$(pacmd list-sinks|grep -m 1 available|head -c 1)
i=0
while [ $i -le $x ]
do
	pactl set-sink-mute $i toggle
#echo $i
((i++))
done
