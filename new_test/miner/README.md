# To build image
docker build . -t miner

# To run standalone
docker run -p 30304:30304 -it miner bash