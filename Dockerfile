FROM ubuntu:bionic
RUN apt update && apt install -y \
    ffmpeg \
    libasound2 \
    cifs-utils
ENV ROON_DATAROOT /mnt/roon-data
WORKDIR /root
ADD http://download.roonlabs.com/builds/RoonServer_linuxx64.tar.bz2 .
RUN tar xvf RoonServer_linuxx64.tar.bz2

EXPOSE 9003/udp
EXPOSE 9100-9200/tcp
VOLUME ["/mnt/roon-data"]
CMD ["/root/RoonServer/start.sh"]
ENTRYPOINT ["/bin/bash", "-c"]
