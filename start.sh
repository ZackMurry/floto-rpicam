#!/bin/sh

echo "Running edevadm"
udevadm control --reload

echo "Running libcamera-hello"
libcamera-hello --list-cameras -n -v

echo "Starting!"
echo "ls /usr/lib/modules"
ls /usr/lib/modules
echo "ls /usr/lib/modules/5.10.95-v8"
ls /usr/lib/modules/5.10.95-v8

modprobe v4l2_common
python3 demo.py
