FROM python:alpine
LABEL maintainer="richard@powell.dev"

RUN apk update && \ 
    apk add --no-cache --virtual .build-deps gcc libc-dev libxslt-dev py3-lxml && \
    apk add --no-cache libxslt && \
    apk add --no-cache bash && \
    apk add --no-cache git && \
    apk add --no-cache curl && \
    apk add --no-cache openssl && \
    apk add --no-cache openssh-client && \
    rm -rf /var/cache/apk/* && \
    pip install --no-cache-dir lxml>=3.5.0 && \
    pip install requests && \
    apk del .build-deps
