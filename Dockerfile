FROM balenalib/raspberrypi4-64-debian:bullseye

RUN install_packages \
    libcamera-dev \
    libcamera-apps-lite \
    python3 \
    v4l-utils

WORKDIR /usr/src/app

COPY start.sh ./

RUN chmod +x start.sh

# RUN usermod -a -G video root

ENV UDEV=on
ENV PRIVILEGED=1
ENV LIBCAMERA_LOG_LEVELS=*:0

CMD ["sh","./start.sh"]
