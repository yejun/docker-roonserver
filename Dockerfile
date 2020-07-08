FROM ubuntu:focal-20200606

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
        && apt-get -y upgrade \
        && apt-get -y install curl bzip2 ffmpeg cifs-utils alsa-utils

ENV ROON_DATAROOT /var/roon
ENV ROON_ID_DIR /var/roon

VOLUME [ "/opt", "/var/roon", "/music" ]

ADD run.sh /
ENTRYPOINT /run.sh

