#!/bin/bash

docker run --rm --init -v roon-data:/mnt/roon-data -p 9003:9003/udp -p 9100-9200:9100-9200/tcp --network bridge --device /dev/snd roon-server 
