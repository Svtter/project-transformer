#!/bin/bash

IMAGE_NAME="svtter/pytorch:2.0.1-cuda11.7-cudnn8-runtime"
docker run --rm -d -p 8901:8888 -v $(pwd)/:/workspace/project-transformer --gpus all --network tf-net --name torch-container $IMAGE_NAME