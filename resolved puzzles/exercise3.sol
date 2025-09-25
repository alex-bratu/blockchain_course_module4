// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleToken {
    mapping(address => uint) public balances;

    constructor() {
        balances[msg.sender] = 1000;
    }

    event Transfer(address indexed from, address indexed to, uint amount);

    function transfer(address _to, uint _amount) external {
        require(balances[msg.sender] >= _amount, "Not enough balance!");

        balances[msg.sender] -= _amount;
        balances[_to] += _amount;

        emit Transfer(msg.sender, _to, _amount);
    }
}
