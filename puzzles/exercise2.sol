// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Allowance {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // TODO: Declare a mapping that stores how much allowance each address has
    // mapping(address => ???) public allowance;

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner!");
        _;
    }

    // TODO: Implement this so the owner can set allowance for any address
    function setAllowance(address _who, uint _amount) external onlyOwner {
        // your code here
    }

    // TODO: Implement this so anyone can check their own allowance
    function myAllowance() external view returns (uint) {
        // your code here
    }
}
