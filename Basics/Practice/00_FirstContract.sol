// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract FirstContract 
{
    uint256 number;

    // Change number value 
    function changeNumber(uint256 _num) public {
        number = _num;
    }

    // Get number value 
    function getNumber() public view returns ( uint256 ) {
        return number;
    }
}