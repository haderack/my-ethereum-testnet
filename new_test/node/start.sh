#!/bin/bash
../geth init /ethereum_node/TibcoGenesis.json
../geth --identity "MyNode" --rpc --rpcport "8545" --rpccorsdomain "*" --datadir "/ethereum_node/datadir" --port "30303" --nodiscover --ipcapi "admin,db,eth,debug,miner,net,shh,txpool,personal,web3" --rpcapi "db,eth,net,web3" --networkid 8900 console