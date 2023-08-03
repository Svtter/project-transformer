FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-runtime

RUN pip install -U pip && pip install requests[socks] black[jupyter] notebook

CMD jupyter-notebook --allow-root --ip 0.0.0.0 .
