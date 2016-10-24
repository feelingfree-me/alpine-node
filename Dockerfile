FROM alpine:3.4
MAINTAINER feelingfree-me <feelingfree.co.nr@gmail.com>

RUN apk --update add nodejs-lts && \
    npm install -g nodemon && \
    npm install -g bower && \
    npm cache clean && \
    rm -rf /var/cache/apk/*

RUN mkdir -p /app
WORKDIR /app