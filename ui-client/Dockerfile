FROM ethereum/client-go

RUN apt-get update \
	&& apt-get install -y curl \
	&& apt-get install -y nodejs npm \
	&& apt-get install -y git-all \
	&& npm cache clean -f \
	&& npm install -g n \
	&& n stable \
	&& npm install express --save \
	&& npm install web3
	
ADD start.sh /root/start.sh
RUN chmod +x /root/start.sh

ENTRYPOINT /root/start.sh
