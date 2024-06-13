import time
import picamera

print('Taking picture!')
with picamera.PiCamera() as camera:
    camera.resolution = (320, 240)
    # Camera warm-up time
    time.sleep(2)
    camera.capture('/usr/src/app.jpg')

print('Picture taken')

time.sleep(10)