FROM tensorflow/tensorflow:2.13.0-gpu-jupyter
# my version tensorflow/tensorflow:2.13.0-gpu-jupyter

RUN pip install "requests[socks]" "black[jupyter]"