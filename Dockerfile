FROM alpine:3.14
RUN apk update
RUN apk add --no-cache bash

RUN apk add alpine-sdk apk-tools git libcamera libcamera-raspberrypi libcamera-tools 
RUN abuild-keygen -a -n
RUN git clone https://github.com/wjtje/libcamera-apps-alpine.git

EXPOSE 5201
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY start.sh .
CMD ["/bin/bash", "/usr/src/app/start.sh"]
