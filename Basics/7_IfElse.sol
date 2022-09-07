// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/** 2 Way to write conditional statements
 * Long way
 * Short way called ternary
 */

contract IfElse {
    function longWay(uint256 _x) external pure returns (uint256) {
        if (_x < 10) {
            return 1;
        } else if (_x < 20) {
            return 2;
        } else {
            return 3;
        }
        // We can remove else and just write return 3
        // return 3
    }

    function shortWay(uint256 _x) external pure returns (uint256) {
        // Long way
        // if ( _x < 10 ) {
        //     return 0;
        // }
        // return 1;

        // Short way
        // if _x < 10 return 0 else return 1
        // the "?" operator is called the ternary operator
        return _x < 10 ? 0 : 1;
    }
}
