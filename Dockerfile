FROM alpine:latest as builder
WORKDIR /root
RUN apk add --no-cache git make build-base && \
    git clone https://github.com/Wind4/vlmcsd.git && \
    cd vlmcsd && \
    make

FROM alpine:latest
COPY --from=builder /root/vlmcsd/bin/vlmcsd /vlmcsd

EXPOSE 1688/tcp

CMD ["/vlmcsd", "-D", "-d", "-t", "3", "-e", "-v"]

