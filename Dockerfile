FROM ghcr.io/chameleoncloud/edge-picamera-image:latest

RUN apt-get update && apt-get install -y \
    libraspberrypi-bin \
    libraspberrypi-dev \
    raspberrypi-bootloader \
    raspberrypi-kernel

# Load the bcm2835-v4l2 module
RUN echo "bcm2835-v4l2" >> /etc/modules

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY start.sh ./
RUN chmod +x start.sh

CMD ["sh", "./start.sh"]
