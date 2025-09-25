// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    address public owner;

    struct Candidate {
        string name;
        uint votes;
    }

    Candidate[] public candidates;
    mapping(address => bool) public hasVoted;

    event Voted(address indexed voter, uint indexed candidateId);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner!");
        _;
    }

    // TODO: Add a function to add a candidate. Only the owner can do it.
    function addCandidate(string memory _name) external onlyOwner {
        // your code here
    }

    // TODO: Add a function to vote for a candidate by index
    function vote(uint _candidateId) external {
        // your code here
        // 1. Ensure the voter hasn't voted yet
        // 2. Increment candidate votes
        // 3. Mark voter as voted
        // 4. Emit Voted event
    }

    // TODO: Add a function to get the winner's name
    function getWinner() external view returns (string memory) {
        // your code here
    }
}
