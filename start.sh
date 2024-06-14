#!/bin/sh

# echo "Running edevadm"
# udevadm control --reload

echo "running ls /dev"
ls /dev

echo "Running rpicam-still -o image.png --width 1920 --height 1080"
rpicam-still -o image.png --width 1920 --height 1080

echo "Running rpicam-hello"
rpicam-hello --list-cameras -n -v

echo "Running libcamera-hello"
libcamera-hello --list-cameras -n -v

# echo "Starting!"
# echo "ls /usr/lib/modules"
# ls /usr/lib/modules
# echo "ls /usr/lib/modules/5.10.95-v8"
# ls /usr/lib/modules/5.10.95-v8

# modprobe v4l2_common
# python3 demo.py
