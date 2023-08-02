#!/bin/bash

# start tf2 container.
docker network create --driver bridge tf-net

# IMAGE_NAME="svtter/tensorflow:2.11.0-gpu-jupyter"
IMAGE_NAME="svtter/tensorflow:2.13.0-gpu-jupyter"

docker run --rm -d -p 8889:8888 -v $(pwd)/:/tf/project-transformer --gpus all --network tf-net --name tf-container $IMAGE_NAME
docker run --rm -d -v $(pwd)/config.json:/app/config.json --network tf-net --name tf-v2ray svtter/v2ray-cli:latest
