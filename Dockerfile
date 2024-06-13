FROM balenalib/raspberrypi4-64-debian-python

# pip install python deps from requirements.txt
# For caching until requirements.txt changes
RUN apt update && apt install libraspberrypi-bin build-essential libcap-dev
COPY ./requirements.txt /requirements.txt
RUN READTHEDOCS=True pip install -r /requirements.txt
# RUN apt install rpicam-apps

COPY . /usr/src/app
WORKDIR /usr/src/app

CMD ["bash","start.sh"]
