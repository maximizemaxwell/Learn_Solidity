// SDPX-License-Identifier: MIT

pragma solidity ^0.8.21;

// 0. Make a contract called Calculator
// 1. Create Result variable to store Result
// 2. Create functions to add, subtract, and multiply to Result
// 3. Create a function to get Result

contract Calculator {
    uint256 result = 0;

    function add(uint256 num) public {
        result += num;
    }

    function subtract(uint256 num) public {
        result -= num;
    }

    function multiply(uint256 num) public {
        result *= num;
    }

    function get() public view returns (uint256) {
        return result;
    }
}
