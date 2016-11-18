FROM ethereum/client-go

ENV NGINX_VERSION 1.11.5

RUN apt-get update \
	&& apt-get install -y curl \
	&& apt-get install -y nodejs npm \
	&& apt-get install -y git-all \
	&& npm cache clean -f \
	&& npm install -g n \
	&& n stable \
	&& npm install express --save \
	&& npm install web3
	
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 \
	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list \
	&& apt-get install nginx -y \
	&& rm -rf /var/lib/apt/lists/*

ADD start.sh /root/start.sh
RUN chmod +x /root/start.sh

EXPOSE 80 443

ENTRYPOINT /root/start.sh
