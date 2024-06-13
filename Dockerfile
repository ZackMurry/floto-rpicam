FROM balenalib/raspberry-pi-debian-python:3.7-3.8

# pip install python deps from requirements.txt
# For caching until requirements.txt changes
RUN apt install libraspberrypi-bin
COPY ./requirements.txt /requirements.txt
RUN READTHEDOCS=True pip install -r /requirements.txt
# RUN apt install rpicam-apps

COPY . /usr/src/app
WORKDIR /usr/src/app

CMD ["bash","start.sh"]
