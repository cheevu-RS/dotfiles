#!/bin/bash
mapfile -t sinks < <(pactl list sinks | sed -n -e 's/^.*Sink #//p')
for sink in "${sinks[@]}"
do
    pactl set-sink-volume $sink -5%
    ((i++))
done
