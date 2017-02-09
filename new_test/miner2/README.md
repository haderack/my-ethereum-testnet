# To build image
>docker build . -t miner2

# To run standalone
>docker run -p 30305:30305 -it miner2 bash

#To send ether
>eth.sendTransaction({from:eth.coinbase, to:"0x4fe51a57421e94cd3f3a72733b2ebc6510c1e937", value: web3.toWei(100000005, "ether")})