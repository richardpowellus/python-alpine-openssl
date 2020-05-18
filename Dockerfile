FROM python:alpine
LABEL maintainer="richard@powell.dev"

RUN apk update && \
  apk add --no-cache openssl && \
  apk add --no-cache openssh-client && \
  rm -rf /var/cache/apk/*
