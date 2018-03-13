# blockchain-for-lunch


## `1-pure-js`

`1-pure-js` is a simple decentralized application, which talks to a private blockchain and gets the balance of an account.

### clone current repository
    $mkdir lunch
    $cd lunch
    $git clone https://github.com/mocovenwitch/blockchain-for-lunch.git
### install http server
    $npm install -g http-server

### turn it on
    $http-server

### visit your first decentralized application
    http://127.0.0.1:8080/

### click button `Get Balance`
    ERROR, BECAUSE YOU DON'T HAVE YOUR BLOCKCHAIN YET!


## `2-private-blockchain`

### install `geth` via Homebrew
    $brew tap ethereum/ethereum
    $brew install ethereum

Or download [MIST](https://github.com/ethereum/mist/releases)

### sync from Etheruem main net
    $geth

Now it run in default mode, which is Fast Mode. If we rerun $geth, it runs into Full Mode. Data is under `~/Library/Ethereum/geth`

### create your private blockchain
    $mkdir hellochain
    $cd hellowchain
    $mkdir chaindata
    $vi genesis.json

    ```
    {
      "difficulty" : "0x20000",
      "gasLimit"   : "0x8000000",
      "alloc": {},
      "config": {
            "chainId": 15,
            "homesteadBlock": 0,
            "eip155Block": 0,
            "eip158Block": 0
        }
    }
    ```

### run your private blockchain
    $geth --datadir=./chaindata --nodiscover --port 30304

### attach to your private blockchain and explore
    $geth attach ipc:/Users/.../eth/chaindata/geth.ipc

## `3-contract`

### What's in contract
Contracts in Solidity are similar to classes in object-oriented languages. Each contract can contain declarations of State Variables, Functions, Function Modifiers, Events, Struct Types and Enum Types. Furthermore, contracts can inherit from other contracts. Check [here](http://solidity.readthedocs.io/en/develop/structure-of-a-contract.html)

### Create your first contract

Use [Remix](https://remix.ethereum.org), and paste the content in `SimpleWallet.sol` to it.

Compile and run.

### understand Gas

[Gas](http://solidity.readthedocs.io/en/develop/introduction-to-smart-contracts.html#gas)

- `each transaction is charged with a certain amount of gas`
- purpose is to limit the amount of work that is needed to execute the transaction and to pay for this execution.
- While the EVM executes the transaction, the gas is gradually depleted according to specific rules.

### remove contract

The only possibility that code is removed from the blockchain is when a contract at that address performs the `selfdestruct` operation. The remaining Ether stored at that address is sent to a designated target and then the storage and code is removed from the state.
