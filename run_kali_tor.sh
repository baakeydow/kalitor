#!/usr/bin/env bash

ROOT_DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

# delete old docker image if any
docker rmi -f kali_tor:latest &>/dev/null || true

# stop old container if any
docker stop running_kalitor &>/dev/null || true

# build fresh image and run new container in detached mode
docker build -t kali_tor:latest . && \
docker run -v "$ROOT_DIR/runtime:/root/workspace/runtime" --rm --cap-add NET_ADMIN --name running_kalitor -it kali_tor "$@"
