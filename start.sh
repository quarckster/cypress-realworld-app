#!/bin/bash

if command -v docker > /dev/null 2>&1; then
    CONTAINER_RUNTIME=docker
elif command -v podman > /dev/null 2>&1; then
    CONTAINER_RUNTIME=podman
else
    echo "Please install podman or docker first"
    exit 1
fi

$CONTAINER_RUNTIME run -it --rm -w /app -v .:/app quay.io/redhatqe/cypress:9.6.0 bash -c "yarn install"
CONTAINER=$($CONTAINER_RUNTIME run -d --rm -p 5999:5999 -e VNC_GEOMETRY=1920x1080 --shm-size=2g -w /app -v .:/app quay.io/redhatqe/cypress:9.6.0 bash -c "yarn dev")
$CONTAINER_RUNTIME exec -it $CONTAINER bash -c "startcypress open"
