#!/bin/bash
mapfile -t sinks < <(pactl list sinks | sed -n -e 's/^.*Sink #//p')
for sink in "${sinks[@]}"
do
    pactl set-sink-mute $sink toggle
    ((i++))
done
