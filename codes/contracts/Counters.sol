// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Counter {
    uint256 public count;

    // Count 증가
    function increment() public {
        count += 1;
    }

    // Count 감소
    function decrement() public {
        require(count > 0, "Count cannot go below zero");
        count -= 1;
    }

    // 현재 Count 반환
    function getCount() public view returns (uint256) {
        return count;
    }
}
