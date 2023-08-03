FROM paddlepaddle/paddle:2.5.1-gpu-cuda10.2-cudnn7.6-trt7.0

RUN pip install notebook requests[socks] black[jupyter]
