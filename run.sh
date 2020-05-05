#!/bin/bash

docker run --rm -d --init -v roon-data:/mnt/roon-data -p 9003:9003/udp -p 9100-9200:9100-9200/tcp --network host --device /dev/snd --privileged --name roon-server roon-server
