FROM node:14-alpine

RUN apk add --no-cache python python-dev python3.7 python3.7-dev \
    linux-headers build-base bash git ca-certificates && \
    python3.7 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    rm -r /root/.cache
