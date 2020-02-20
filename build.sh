#!/bin/bash
set -Eeuxo pipefail
NAME=${1:-"roon-server"}
docker build -t $NAME .
