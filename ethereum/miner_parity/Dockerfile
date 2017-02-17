FROM ubuntu:14.04

ADD ./miner_parity /ethereum_node
ADD ./common /ethereum_node/common

RUN \
	apt-get update && \
	apt-get install build-essential -y && \
	apt-get install curl -y && \
	curl https://sh.rustup.rs -sSf | sh -y && \
	export PATH=~/.cargo/bin/:$PATH && \
	cargo install --git https://github.com/ethcore/parity.git parity && \
	add-apt-repository ppa:ethereum/ethereum && \
	apt-get update && \
	apt-get install ethminer
	

#ENTRYPOINT ["/ethereum_node/start.sh"]
ENTRYPOINT ["/bin/bash"]