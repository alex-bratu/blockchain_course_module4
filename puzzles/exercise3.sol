// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleToken {
    mapping(address => uint) public balances;

    constructor() {
        // give the deployer some tokens
        balances[msg.sender] = 1000;
    }

    // TODO: Declare an event called Transfer that logs:
    // - from (address)
    // - to (address)
    // - amount (uint)

    function transfer(address _to, uint _amount) external {
        require(balances[msg.sender] >= _amount, "Not enough balance!");

        balances[msg.sender] -= _amount;
        balances[_to] += _amount;

        // TODO: Emit the Transfer event here
    }
}
