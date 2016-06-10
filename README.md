# Test Accounts
1.- My test account 1: 0x1f876dbcb5862c899039a7541a73f88fba1c7934/test1pass
2.- My test account 2: 0x8083537014e0cba379c8a637aac6696904829ee7/test2pass
3.- My test account 3: 0x1da31d2a99902b0df1739f3ec0414e8a53b1dd02/test3pass
4.- My test accound 4: 0x1097e38165e66455f4b75e0ab6a6163bee3da14e/test4pass


# Send Transactions (Send ether)
> eth.sendTransaction({from: '0x1f876dbcb5862c899039a7541a73f88fba1c7934', to: '0x8083537014e0cba379c8a637aac6696904829ee7', value: web3.toWei(1, "ether")})

# Create Deploy contract
source = "contract test { function multiply(uint a) returns(uint d) { return a * 7; } }"
var compiledMultiply7 = web3.eth.compile.solidity(source)
> eth.compile.solidity(source).test
> primaryAddress = eth.accounts[0]
> MyMultiply7Contract = eth.contract(compiledMultiply7.info.abiDefinition)
> personal.unlockAccount(primaryAddress,"test1pass")
> multiply7Contract = MyMultiply7Contract.new({from: primaryAddress, data: contract.code})
> miner.start(1)
> admin.sleepBlocks(1)
> miner.stop()
> multiply7Contract.multiply.call(2)