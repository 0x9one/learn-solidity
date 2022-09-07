// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/** Modifiers are code that can be run before and / or after a function call
 * Restrict access
 * Validate inputs
 * Guard against reentrancy hack
 * Basic, Input, sandwich
 */

contract FunctionModifier {
    bool public paused;
    uint256 public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }

    // Normal function
    function incre() external {
        require(!paused, "paused");
        count += 1;
    }

    function decre() external {
        require(!paused, "paused");
        count -= 1;
    }

    // Use modifier method
    modifier whenNotPaused() {
        require(!paused, "paused");
        _; // to call a function
    }

    function inc() external whenNotPaused {
        count += 1;
    }

    function dec() external whenNotPaused {
        count -= 1;
    }

    // Modifier with inputs
    modifier cap(uint256 _x) {
        require(_x < 100, "x >= 100");
        _;
    }

    function incBy(uint256 _x) external whenNotPaused cap(_x) {
        count += _x;
    }

    // Modifier use sandwich
    modifier sandWich() {
        // code here
        count += 10;
        _;
        // more code here
        count *= 2;
    }

    function foo() external sandWich {
        count += 1;
    }
}
