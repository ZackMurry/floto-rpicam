FROM balenalib/raspberrypi4-64-python

# pip install python deps from requirements.txt
# For caching until requirements.txt changes
COPY ./requirements.txt /requirements.txt
RUN READTHEDOCS=True pip install -r /requirements.txt
RUN apt install v4l-utils

COPY . /usr/src/app
WORKDIR /usr/src/app

CMD ["bash","start.sh"]
