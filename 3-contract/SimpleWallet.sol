pragma solidity ^0.4.21;

contract SimpleWallet {

    address myAddress = this;

    function getBalance() constant public returns (uint) {
        return myAddress.balance;
    }

    function () public payable {}
}
