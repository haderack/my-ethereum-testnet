FROM alpine:3.4

RUN \
  apk update && \
  apk upgrade && \
  apk add nodejs && \
  apk add go git make gcc musl-dev && \
  apk add --update python python-dev  py-pip  build-base && \
  npm install -g truffle && \
  apk del go git make gcc musl-dev && \
  apk add --update bash && \
  rm -rf /var/cache/apk/*
  
ADD . /ethereum_node  

EXPOSE 30306

ENTRYPOINT ["/ethereum_node/start.sh"]