FROM alpine:3.13.1 AS builder
LABEL maintainer=orginux
RUN set -ex && \
        wget https://github.com/instrumenta/kubeval/releases/latest/download/kubeval-linux-amd64.tar.gz && \
        tar xf kubeval-linux-amd64.tar.gz && \
        cp kubeval /usr/local/bin
