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

    function addCandidate(string memory _name) external onlyOwner {
        candidates.push(Candidate(_name, 0));
    }

    function vote(uint _candidateId) external {
        require(!hasVoted[msg.sender], "Already voted!");
        require(_candidateId < candidates.length, "Invalid candidate ID!");

        candidates[_candidateId].votes += 1;
        hasVoted[msg.sender] = true;

        emit Voted(msg.sender, _candidateId);
    }

    function getWinner() external view returns (string memory) {
        require(candidates.length > 0, "No candidates yet!");

        uint winningVoteCount = 0;
        uint winnerIndex = 0;

        for (uint i = 0; i < candidates.length; i++) {
            if (candidates[i].votes > winningVoteCount) {
                winningVoteCount = candidates[i].votes;
                winnerIndex = i;
            }
        }

        return candidates[winnerIndex].name;
    }
}
