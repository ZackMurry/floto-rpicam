FROM ghcr.io/chameleoncloud/edge-picamera-image:latest

# RUN echo "SUBSYSTEM==\"dma_heap\", GROUP=\"video\", MODE=\"0660\"" >> /etc/udev/rules.d/raspberrypi.rules
# RUN echo "camera_auto_detect=1" >> /boot/config.txt
ENV UDEV=on

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY start.sh ./
RUN chmod +x start.sh
RUN usermod -a -G video root

CMD ["sh", "./start.sh"]
