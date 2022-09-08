// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// Mapping: It's like a dictionary
// How to declare a mapping
// Simple and nested
// Set, get, delete

contract Mapping {
    // If want to search about a Joy in the array ['Donn', 'Hory', 'Mary']
    // You have check the 3 element to know if Joy found. Here where mapping come
    // By using mapping we can find it in one oprator {''Donn': true, 'Hory': true, 'Mary': true}
    // When we Check we know form the first time that Jou: false becuase is not element of the array

    // Declare a mapping
    // mapping(key_type => value_type) visibility (public) mapping_name;
    // This mapping is know the balance of the address
    mapping(address => uint256) public balance;

    // Nasted mapping
    mapping(address => mapping(address => bool)) public isOwn;

    /** Operations set, get, delete */
    function mappOperation() external {
        // Set a value
        // mappingName[key] = value;
        balance[msg.sender] = 123;

        // Get the mapping value
        uint256 getBalance = balance[msg.sender];

        // We can get the value of not set mapping element
        uint256 getNoSet = balance[address(1)]; // Result: 0

        // Update mapping
        balance[msg.sender] = 456;
        // for increment
        balance[msg.sender] += 1; // Result: 457

        // Delete mapping element
        delete balance[msg.sender]; // Rest to the default value Result: 0

        // Nested
        isOwn[msg.sender][address(this)] = true;
    }
}
