FROM alpine:3.4

RUN \
  apk add --update go git make gcc musl-dev && \
  git clone --depth 1 https://github.com/ethereum/go-ethereum && \
  (cd go-ethereum && make all) && \
  mkdir /ethereum_node && \
  cp go-ethereum/build/bin/bootnode /bootnode && \
  apk del go git make gcc musl-dev && \
  apk add --update bash && \
  rm -rf /go-ethereum && rm -rf /var/cache/apk/*
  
ADD . /ethereum_node  

EXPOSE 30301

ENTRYPOINT ["/ethereum_node/start.sh"]