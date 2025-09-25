// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MemoryVsStorage {
    uint[] public numbers;

    constructor() {
        numbers = [1, 2, 3];
    }

    function updateWrong() external {
        uint[] memory temp = numbers; 
        temp[1] = 99; 
        // This only changes the copy in memory, not the storage array
    }

    function updateCorrect() external {
        uint[] storage temp = numbers; 
        temp[1] = 99; 
        // This updates the actual storage array
    }
}