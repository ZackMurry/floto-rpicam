FROM ghcr.io/chameleoncloud/edge-picamera-image:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY start.sh ./
RUN chmod +x start.sh

CMD ["sh", "./start.sh"]
