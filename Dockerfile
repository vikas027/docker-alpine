FROM alpine:3.13.5

RUN apk update && \
    apk upgrade && \
    apk --no-cache add curl wget bash tree ca-certificates bind-tools jq busybox-extras && \
    rm -rf /var/cache/apk/*
