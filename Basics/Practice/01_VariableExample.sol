// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/** You will know how to use local and state variables by a simple example */

contract VariableExample {
    // State variables
    uint256 public i;
    bool public b;
    address public myAddress;

    function foo() external {
        // Local Variables
        uint256 x = 123;
        bool f = false;
        // Add 200 to the variable x
        x += 200;
        f = true;

        // Change state variable value when function called
        i = 123;
        b = true;
        myAddress = address(1);
    }

    // Grap some function about the block we use Gloval variable
    // We will explain view in the next topic
    // We will also discover much more thing about function and how to return multy things
    function globalVariable()
        external
        view
        returns (
            address,
            uint256,
            uint256
        )
    {
        address sender = msg.sender; // Address of the sender
        uint256 timestamp = block.timestamp; // Uinx Timestamp when the function called
        uint256 blockNum = block.number; // Stock the number of the block
        return (sender, timestamp, blockNum);
    }
}
