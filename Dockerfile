FROM ghcr.io/chameleoncloud/edge-picamera-image:latest

# Load the bcm2835-v4l2 module
RUN echo "bcm2835-v4l2" >> /etc/modules
ENV UDEC=on

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY start.sh ./
RUN chmod +x start.sh

CMD ["sh", "./start.sh"]
