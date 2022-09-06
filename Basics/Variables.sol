// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/** There are 3 types of variables in Solidity
* Local
    - declared inside a function
    - not stored on the blockchain
* State
    - declared outside a function
    - stored on the blockchain
    - Can modify inside a function
* Global
    - provides information about the blockchain
*/

contract Variables {
    // State variables
    uint256 public age = 30;

    function makeMove() public {
        // Local variabel
        uint256 moveBy = 1;

        // Global variable
        uint256 timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of the caller
    }
}
