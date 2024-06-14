FROM balenalib/raspberrypi4-64-debian-python

# pip install python deps from requirements.txt
# For caching until requirements.txt changes
RUN apt update && apt install libraspberrypi-bin build-essential libcap-dev libcamera-dev python3-libcamera libcamera-apps python3-picamera2
# COPY ./requirements.txt /requirements.txt
# RUN READTHEDOCS=True pip install -r /requirements.txt
# RUN apt install rpicam-apps

RUN apt update
# RUN apt install libcamera-apps python3 v4l-utils
RUN apt install -y wget

# RUN wget -O install_pivariety_pkgs.sh https://github.com/ArduCAM/Arducam-Pivariety-V4L2-Driver/releases/download/install_script/install_pivariety_pkgs.sh
# ADD install_pivariety_pkgs.sh .

WORKDIR /usr/src/app
COPY ./install_pivariety_pkgs.sh .
ENV DEBIAN_FRONTEND=noninteractive 
RUN apt-get install -y tzdata
RUN apt install -y meson ninja-build pkg-config libyaml-dev python3-yaml python3-ply python3-jinja2
RUN apt install -y git

RUN git clone https://git.libcamera.org/libcamera/libcamera.git
WORKDIR /usr/src/app/libcamera
RUN meson setup build
RUN ninja -C build install

COPY . /usr/src/app
WORKDIR /usr/src/app

CMD ["bash","start.sh"]
