echo "Starting!"
echo "ls /lib/modules"
ls /lib/modules
echo "ls /lib/modules/5.10.95-v8"
ls /lib/modules/5.10.95-v8

modprobe v4l2_common
python3 demo.py
