FROM python:3.8.12-slim-buster as base
WORKDIR /app/
RUN pip install tensorboard
EXPOSE 6006
#CMD ['python3 /usr/local/lib/python3.8/site-packages/tensorboard/main.py --logdir /app/']
