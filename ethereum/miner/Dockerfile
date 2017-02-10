FROM alpine:3.4

ADD ./miner /ethereum_node
ADD ./common /ethereum_node/common
ADD ./go-ethereum /ethereum_node/go-ethereum

RUN \
  apk add --update go git make gcc musl-dev && \
  rm /ethereum_node/go-ethereum/src/github.com/ethereum/go-ethereum/.git && \
  (cd /ethereum_node/go-ethereum/src/github.com/ethereum/go-ethereum && make geth) && \
  cp /ethereum_node/go-ethereum/src/github.com/ethereum/go-ethereum/build/bin/geth /ethereum_node/common/geth && \
  apk del go git make gcc musl-dev && \
  apk add --update bash && \
  rm -rf /go-ethereum && rm -rf /var/cache/apk/*

ENTRYPOINT ["/ethereum_node/start.sh"]