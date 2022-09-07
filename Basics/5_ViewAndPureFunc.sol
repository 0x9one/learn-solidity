// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/** View and Pure function
 * View: read only from the blockchain and no state will be changed.
 * Pure: No read or change from the blockchain no state variable will be changed or read.
 */

contract ViewAndPure {
    uint256 public num;

    function viewFunc() external view returns (uint256) {
        return num;
    }

    function pureFunc() external pure returns (uint256) {
        return 1;
    }

    // Practice Chose which function is view and which is pure
    // Replace ? mark with View or Pure
    function addTwo(uint x) external ? returns (uint) {
        return num + x;
    }

    function add(uint x, uint y) external ? returns (uint) {
        return x + y;
    }

}
