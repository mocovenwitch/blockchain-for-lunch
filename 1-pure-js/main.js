if (typeof web3 !== 'undefined') {
  web3 = new Web3(web3.currentProvider);
} else {
  // set the provider you want from Web3.providers
  web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
}

function getBalance() {
  document.getElementById("myBalance").innerText = web3.fromWei(web3.eth.getBalance(web3.eth.accounts[0]));
}
