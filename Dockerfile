FROM python:3.8.12-alpine3.15 as base
RUN apk update && apk add py-pip && pip install tensorboard
WORKDIR /app
ENTRYPOINT ['tensorboard --logdir /app/']
