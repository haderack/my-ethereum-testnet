# To build image
docker build . -t node

# To run standalone
docker run -p 8545:8545 -p 30303:30303 -it node bash

# To deploy contract
cd apps
truffle compile
truffle migrate

