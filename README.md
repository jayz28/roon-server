# Dockerized Roon Server

This is a simple dockerized version of Roon Server.
Use build.sh to build the docker image, and run.sh to run after build.
Currently, data is saved to the named volume roon-data. Eventually, the goal is to automatically backup metadata to git, allowing for easy synchronization across multiple cores.
