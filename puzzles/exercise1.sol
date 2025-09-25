// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PiggyBank {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function deposit() external payable {}

    // TODO: Fix this function so that only the owner can call it
    function withdraw() external {
        payable(msg.sender).transfer(address(this).balance);
    }
}