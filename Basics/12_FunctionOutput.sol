// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/**
 * Return multiple outputs
 * Give return ouputs name
 * Destructuring assignment
 */

contract FunctionOuput {
    // All this 3 exmples return multiple outputs so choose any one you want
    // Return Multiple Outputs
    function multipleOutputs() public pure returns (uint256, bool) {
        return (1, true);
    }

    // Give a return ouptputs name
    function outputsName() public pure returns (uint256 x, bool y) {
        return (1, true);
    }

    // Assignmed and save gas
    function assignmedOutput() public pure returns (uint256 x, bool y) {
        x = 1;
        y = true;
    }

    // Destructuring assignment
    function destructuringAssignments() public pure {
        // Write the variable that you want to return
        (uint256 x, bool y) = multipleOutputs();
        // If you want to return only the second one do
        (, bool b) = multipleOutputs();
    }
}
