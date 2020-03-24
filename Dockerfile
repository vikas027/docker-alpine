FROM alpine:3.11.5

RUN apk update && \
    apk upgrade && \
    apk --no-cache add curl wget bash tree ca-certificates bind-tools jq busybox-extras && \
    which telnet && \
    echo | telnet github.com 22 && \
    rm -rf /var/cache/apk/*
