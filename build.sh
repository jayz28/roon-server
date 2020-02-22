#!/bin/bash
set -Eeuxo pipefail
NAME=${1:-"jayz28/roon-server"}
docker build -t $NAME .
