FROM python:alpine
LABEL maintainer="richard@powell.dev"

RUN apk update && \
  apk add --no-cache bash && \
  apk add --no-cache git && \
  apk add --no-cache curl && \
  apk add --no-cache openssl && \
  apk add --no-cache openssh-client && \
  rm -rf /var/cache/apk/*
