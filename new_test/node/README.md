# To build image
docker build . -t node

# To run standalone
docker run -p 8545:8545 -p 30303:30303 -it node bash

# To deploy contract
cd apps
truffle compile
truffle migrate

# To send ether
eth.sendTransaction({from:eth.coinbase, to:"0x9c622bd1a7c5312284a1e680e88362daf00c004f", value: web3.toWei(100000005, "ether")})

