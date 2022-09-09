// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/** Constants are variables that cannot be modified.
 * Using constants can save gas costs. to know more about it you can search about Smart contract gas optimization
 */

contract Constants {
    // This variable will be never modified so why do we not make it constant to make code cleaner and save gas
    address public myAddress = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    // In const way, we write variable in Uppercase and use underscore Between words and that's
    // It will help people to know where is the constant variable in your code
    address public constant MY_ADDRESS =
        0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
}
