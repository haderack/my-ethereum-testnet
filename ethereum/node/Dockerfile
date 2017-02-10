FROM alpine:3.4

ADD ./node /ethereum_node
ADD ./common /ethereum_node/common
ADD ./go-ethereum /ethereum_node/go-ethereum

RUN \
  apk update && \
  apk upgrade && \
  apk add nodejs && \
  apk add go git make gcc musl-dev && \
  (cd /ethereum_node/go-ethereum/src/github.com/ethereum/go-ethereum && make geth) && \
  cp /ethereum_node/go-ethereum/src/github.com/ethereum/go-ethereum/build/bin/geth /ethereum_node/common/geth && \
  apk add --update python python-dev  py-pip  build-base && \
  npm install -g truffle && \
  apk del go git make gcc musl-dev && \
  apk add --update bash && \
  rm -rf /var/cache/apk/*
  

ENTRYPOINT ["/ethereum_node/start.sh"]