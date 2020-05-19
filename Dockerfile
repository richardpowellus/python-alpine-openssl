FROM python:alpine
LABEL maintainer="richard@powell.dev"

RUN apk update && \ 
    apk add --no-cache --virtual .build-deps gcc libc-dev libxslt-dev py3-lxml && \
    apk add --no-cache libxslt && \
    pip install --no-cache-dir lxml && \
    apk del .build-deps && \
    apk add --no-cache bash && \
    apk add --no-cache git && \
    apk add --no-cache curl && \
    apk add --no-cache openssl && \
    apk add --no-cache openssh-client && \
    rm -rf /var/cache/apk/* && \
    pip install requests

RUN echo "PS1='\${debian_chroot:+(\$debian_chroot)}\\[\033[01;32m\\]\\u@\\H\[\\033[00m\\]:\\[\\033[01;34m\\]\\w\\[\\033[00m\\]\\$ '" >> ~/.bashrc
