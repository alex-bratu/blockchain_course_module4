// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MemoryVsStorage {
    uint[] public numbers;

    constructor() {
        numbers = [1, 2, 3];
    }

    // This function is supposed to update the second element (index 1) to 99
    function updateWrong() external {
        uint[] memory temp = numbers; // <-- problem here
        temp[1] = 99;
    }

    // TODO: Write a correct function that updates the array in storage
    function updateCorrect() external {
        // your code here
    }
}
