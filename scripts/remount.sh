#!/bin/bash
sudo umount /media
sudo ntfsfix /dev/sda7
sudo mount -o rw /dev/sda7 /media
