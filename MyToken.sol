// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

// Public variables to store the details about the coin
string public tokenName;
string public tokenAbbrv;
uint public totalSupply;

// Mapping of addresses to balances
mapping(address => uint) public balances;

// Constructor to initialize the token details
constructor(string memory _tokenName, string memory _tokenAbbrv) {
tokenName = _tokenName;
tokenAbbrv = _tokenAbbrv;
totalSupply = 0;
}

// Function to mint new tokens
function mint(address _address, uint _value) public {
totalSupply += _value;
balances[_address] += _value;
}

// Function to burn tokens
function burn(address _address, uint _value) public {
require(balances[_address] >= _value, "Insufficient balance to burn");
totalSupply -= _value;
balances[_address]-=_value;
}
}
