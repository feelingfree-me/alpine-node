FROM alpine:3.4
MAINTAINER feelingfree-me  <feelingfree.co.nr@gmail.com>

RUN apk --update add nodejs-lts && \
    rm -rf /var/cache/apk/*

RUN mkdir -p /app
WORKDIR /app