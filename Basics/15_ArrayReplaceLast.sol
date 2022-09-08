// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/** we see how remove element from the array in the previous lesson but is not
a goode way  because will cost more gas So today we will learn the better to do it */

contract ArrayReplaceLast {
    uint256[] public replaceLast;

    // How we can remove the element in better and to save more gas
    // We make the left shif algorithm in a shory way
    // So we will replace the element we want to remove with the last element on the array
    // [1, 2, 3 , 4] remove(1) --> [1, 4, 3, 2] --> [1, 4, 3]
    function replaceAndRemove(uint256 _index) public {
        // Replace the element that we want to remove with the last one
        replaceLast[_index] = replaceLast[replaceLast.length - 1];

        // Remove the last element
        replaceLast.pop();
    }

    // Test and deploy
    function test() external {
        replaceLast = [1, 2, 3, 4];
        // Remove element
        replaceAndRemove(1);
        // Result must be true
        // Result: [1, 4, 3]
        // Must the length of the array be 3
        assert(replaceLast.length == 3);
        // Must first element be 1
        assert(replaceLast[0] == 1);
        // Must second element be 4
        assert(replaceLast[1] == 4);
        // Must third element be 3
        assert(replaceLast[2] == 3);

        // Remove again element 2
        replaceAndRemove(2);
        // Reuslt: [1, 4]
        assert(replaceLast.length == 2);
        assert(replaceLast[0] == 1);
        assert(replaceLast[1] == 4);
    }
}
