// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Allowance {
    address public owner;
    mapping(address => uint) public allowance;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner!");
        _;
    }

    function setAllowance(address _who, uint _amount) external onlyOwner {
        allowance[_who] = _amount;
    }

    function myAllowance() external view returns (uint) {
        return allowance[msg.sender];
    }
}