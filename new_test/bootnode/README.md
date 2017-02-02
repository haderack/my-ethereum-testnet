# To build image
docker build . -t bootnode

# To run standalone
docker run -p 30301:30301 bootnode


#Notes
This node should be started first