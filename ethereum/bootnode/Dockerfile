FROM alpine:3.4

ADD ./bootnode /ethereum_node
ADD ./common /ethereum_node/common
ADD ./go-ethereum /ethereum_node/go-ethereum

RUN \
  apk add --update go git make gcc musl-dev && \
  rm /ethereum_node/go-ethereum/src/github.com/ethereum/go-ethereum/.git && \
  (cd /ethereum_node/go-ethereum/src/github.com/ethereum/go-ethereum && make all) && \
  cp /ethereum_node/go-ethereum/src/github.com/ethereum/go-ethereum/build/bin/bootnode /ethereum_node/common/bootnode && \
  apk del go git make gcc musl-dev && \
  apk add --update bash && \
  rm -rf /go-ethereum && rm -rf /var/cache/apk/*  

EXPOSE 30301

ENTRYPOINT ["/ethereum_node/start.sh"]