#!/bin/bash
sudo umount /media
sudo ntfsfix /dev/sda8
sudo mount -o rw /dev/sda8 /media
