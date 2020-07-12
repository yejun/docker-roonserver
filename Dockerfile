FROM ubuntu:focal-20200606

ENV DEBIAN_FRONTEND noninteractive

RUN     apt-get update && apt-get -y upgrade && apt-get install -y curl wget bzip2 ffmpeg libjemalloc2
RUN     apt-get -y install curl cifs-utils alsa-utils

ENV ROON_DATAROOT /var/roon
ENV ROON_ID_DIR /var/roon
ENV LD_PRELOAD /usr/lib/x86_64-linux-gnu/libjemalloc.so.2

VOLUME [ "/opt", "/var/roon", "/music" "/backup" ]

ADD run.sh /
ENTRYPOINT [ "/run.sh" ]
