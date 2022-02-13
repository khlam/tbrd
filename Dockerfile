FROM python:3.8.12-alpine3.15 as base
RUN apk add --update --no-cache gcc g++ musl-dev python3-dev libffi-dev openssl-dev cargo && \
    pip install tensorboard && \
    apk del gcc g++ musl-dev python3-dev libffi-dev openssl-dev cargo
WORKDIR /app
EXPOSE 6006
ENTRYPOINT ['tensorboard --logdir /app/']
