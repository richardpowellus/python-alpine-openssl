FROM python-alpine
LABEL maintainer="richard@powell.dev"

RUN apk update && \
  apk add --no-cache openssl && \
  rm -rf /var/cache/apk/*
