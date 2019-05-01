FROM alpine:3.9

MAINTAINER Peterson W. Santos <opeterson@hotmail.com>

WORKDIR /doc

COPY ./requiriments.txt /doc/requiriments.txt

RUN apk add --no-cache --virtual --update python3 make wget ca-certificates ttf-dejavu openjdk8-jre graphviz && \
    pip3 install --upgrade pip && \
    pip install -r  requiriments.txt
