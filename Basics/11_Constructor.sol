// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/** Constructor are special functions that are only called once when the contract is deployed
 * It's mainly used to initialize state variables
 */

contract Constructor {
    address public owner;
    uint256 public x;

    constructor(uint256 _x) {
        owner = msg.sender;
        x = _x;
    }
}
