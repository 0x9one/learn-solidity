// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/** Create a contract to increment and decrement the count */
contract Counter {
    uint256 public count;

    // Function to get the current count
    // We will explain what is its view and pure and what's the difference between them
    function get() public view returns (uint256) {
        return count;
    }

    // Function to increment count by 1
    // count += 1 -> count = count + 1
    // count -= 1 -> count = count - 1
    function inc() public {
        count += 1;
    }

    // Function to decrement count by 1
    function dec() public {
        // This function will fail if count = 0
        count -= 1;
    }
}
