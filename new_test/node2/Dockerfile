FROM alpine:3.4

RUN \
  apk update && \
  apk upgrade && \
  apk add nodejs && \
  apk add go git make gcc musl-dev && \
  git clone --depth 1 --branch v1.5.8 https://github.com/ethereum/go-ethereum && \
  (cd go-ethereum && make geth) && \
  cp go-ethereum/build/bin/geth /geth && \
  apk add --update python python-dev  py-pip  build-base && \
  npm install -g truffle && \
  apk del go git make gcc musl-dev && \
  apk add --update bash && \
  rm -rf /go-ethereum && rm -rf /var/cache/apk/*
  
ADD . /ethereum_node  

ENTRYPOINT ["/ethereum_node/start.sh"]