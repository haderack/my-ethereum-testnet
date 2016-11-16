FROM ethereum/client-go


RUN apt-get update \
	&& apt-get install git-all -y \
	&& apt-get install nodejs -y \
	&& apt-get install npm -y \
	&& npm install express --save -y \
	&& npm install web3 -y

ADD start.sh /root/start.sh
RUN chmod +x /root/start.sh

ENTRYPOINT /root/start.sh
