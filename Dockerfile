FROM alpine:3.14
RUN apk add --no-cache bash
RUN apk add libcamera libcamera-dev libcamera-raspberrypi libcamera-tools raspberrypi raspberrypi-dev raspberrypi-static raspberrypi-bootloader raspberrypi-bootloader-common raspberrypi-bootloader-experimental v4l-utils
EXPOSE 5201
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY start.sh .
CMD ["/bin/bash", "/usr/src/app/start.sh"]
