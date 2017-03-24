FROM alpine:latest

RUN apk update \
    && apk upgrade \
    && apk add --no-cache build-base gcc abuild binutils cmake git \
    && cd / \
    && git clone https://github.com/Wind4/vlmcsd.git vlmgit \
    && cd vlmgit \
    && make \
    && chmod +x bin/vlmcsd \
    && mv bin/vlmcsd / \
    && cd / \
    && apk del build-base gcc abuild binutils cmake git \
    && rm -rf /vlmgit  \
    && rm -rf /var/cache/apk/*

EXPOSE 1688

CMD ["/vlmcsd", "-D", "-d", "-t", "3", "-e", "-v"]

