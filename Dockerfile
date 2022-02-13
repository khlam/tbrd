FROM python:3.8.12-alpine3.15 as base
RUN apk add --update --no-cache alpine-sd gcc musl-dev python3-dev libffi-dev openssl-dev cargo && \
    pip install tensorboard && \
    apk del alpine-sd gcc musl-dev python3-dev libffi-dev openssl-dev cargo
WORKDIR /app
EXPOSE 6006
RUN useradd -m tbrd
USER tbrd
ENTRYPOINT ['tensorboard --logdir /app/']
