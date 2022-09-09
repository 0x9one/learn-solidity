// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/** An error will undo all changes made to the state during a transaction. gas refund
 * require is used to validate inputs and conditions before execution.
 * revert is similar to require. See the code below for details.
 * assert is used to check for code that should never be false. 
 Failing assertion probably means that there is a bug.
 * Use custom error to save gas. 
 * A long error message cost more gas.
 */

contract Error {
    function errRequire(uint256 _x) public pure {
        // Require use to Validate inputs, Access controlling who gets call the functions
        require(_x < 10, "X is grater then 10");
    }

    function errRevert(uint256 _x) public pure {
        if (_x <= 10) {
            // Revert is better to use it fi your condition to check is nested in a lot of if statements
            revert("X grater then 10");
        }

        // You can use revert also to check if the condition work write
        if (_x > 1) {
            if (_x > 2) {
                if (_x > 10) {
                    revert("i > 10");
                }
            }
        }
    }

    uint256 public num = 20;

    function errAssert() public view {
        // Assert is used to check for condition that should always be true
        // Should only use for test internal errors
        assert(num == 20);
    }

    // Custome error
    // Error always work with revert
    error MyError(address caller, uint256 x);

    function errCustome(uint256 _x) public view {
        if (_x > 10) {
            revert MyError(msg.sender, _x);
        }
    }
}
