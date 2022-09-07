// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/** We will practice all what we learnd before
 * State variable
 * Global variable
 * Constructor
 * Function modifier
 * Function
 * Error handling
 */

contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender; // Set the address when the smart contract deployed
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function setOwner(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), "Invalid address"); // Check the address not 0x000000000000000000000
        owner = _newOwner;
    }

    function onlyOwnerCanCallThisFunc() external onlyOwner {
        // Code Here
    }

    function anyoneCanCall() external {
        // Code Here
    }
}
