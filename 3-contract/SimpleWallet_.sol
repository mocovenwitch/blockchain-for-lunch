pragma solidity ^0.4.21;

contract SimpleWallet {

    address myAddress = this;

    address owner;

    function SimpleWallet() public {
        owner = msg.sender;
    }

    function getBalance() constant public returns (uint) {
        return myAddress.balance;
    }

    function () public payable {}

    function kill() public {
        if (msg.sender == owner) selfdestruct(owner);
    }
}
