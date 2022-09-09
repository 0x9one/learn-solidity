// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/** You have to deploy this in remix and see the console to see how much gas will save when you use constant */

// Constant contract
// Gas Cost -> 21420
contract ConstGasSave {
    address public constant MY_ADDRESS =
        0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
}

// Variable contract
// Gas cost -> 23553
contract VarContract {
    address public myAddress = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
}
