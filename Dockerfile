FROM alpine:3.5

MAINTAINER Peterson W. Santos <opeterson@hotmail.com>

RUN apk add --no-cache --virtual --update py-pip make wget ca-certificates ttf-dejavu openjdk8-jre graphviz \
    && pip install --upgrade pip \
    && pip install sphinx sphinx_rtd_theme sphinxcontrib-plantuml sphinx_autobuild

WORKDIR /doc
