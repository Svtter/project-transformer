#!/bin/bash

# start tf2 container.
docker network create --driver bridge tf-net
docker run --rm -d -p 8889:8888 -v $(pwd)/:/tf/project-transformer --gpus all --network tf-net --name tf-container docker.io/tensorflow/tensorflow:2.13.0-gpu-jupyter
docker run --rm -d -v $(pwd)/config.json:/app/config.json --network tf-net --name tf-v2ray svtter/v2ray-cli:latest
