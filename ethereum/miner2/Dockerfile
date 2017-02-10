FROM alpine:3.4

RUN \
  apk add --update go git make gcc musl-dev && \
  git clone --depth 1 --branch v1.5.8 https://github.com/ethereum/go-ethereum && \
  (cd go-ethereum && make geth) && \
  cp go-ethereum/build/bin/geth /geth && \
  apk del go git make gcc musl-dev && \
  apk add --update bash && \
  rm -rf /go-ethereum && rm -rf /var/cache/apk/*
  
ADD . /ethereum_node  

EXPOSE 30305

ENTRYPOINT ["/ethereum_node/start.sh"]