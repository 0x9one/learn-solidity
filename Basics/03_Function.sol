// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/** You will learn the basics of function
 * How to write it?
 * How to set parameters?
 * How to return a value?
 */

contract Function {
    /** Create a function that add to numbers
     * External: mean that when we deploy this contract we'll be able to call this function. Discover it later
     * Pure: means that this function is read-only it does not write anything to the blockchain. Discover it later
     * Returns: means which data type function will return
     */
    function add(uint256 x, uint256 y) external pure returns (uint256) {
        return x + y;
    }

    function sub(uint256 x, uint256 y) external pure returns (uint256) {
        return x - y;
    }
}
