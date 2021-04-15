#!/usr/bin/env bash

PROJECT_NAME=dl_remote
CONTAINER_NAME=yikeda_${PROJECT_NAME}
IMAGE_NAME=${PROJECT_NAME}
TAG_NAME=latest

docker run -it --rm \
    --gpus all \
    -p 5900:5900 \
    -p 8888:8888 \
    -e DISPLAY=:0\
    -v ${PWD}/work:/root/work \
    --name ${CONTAINER_NAME} \
    ${IMAGE_NAME}:${TAG_NAME}
