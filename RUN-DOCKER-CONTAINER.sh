#!/usr/bin/env bash

PROJECT_NAME=dl_remote
CONTAINER_NAME=yikeda_${PROJECT_NAME}
IMAGE_NAME=${PROJECT_NAME}
TAG_NAME=latest

docker run -it --rm \
    -p 5910:5900 \
    -e DISPLAY=:0\
    -v ${PWD}/work:/root/work \
    --name ${CONTAINER_NAME} \
    ${IMAGE_NAME}:${TAG_NAME}
