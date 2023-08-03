# seems not stable
FROM tensorflow/tensorflow:2.13.0-gpu-jupyter

# FROM tensorflow/tensorflow:2.11.0-gpu-jupyter
# my version tensorflow/tensorflow:2.13.0-gpu-jupyter

RUN pip install "requests[socks]" "black[jupyter]" && pip install -U notebook