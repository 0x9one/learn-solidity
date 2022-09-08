// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/** Remove element form the arary */
contract ArrayShift {
    // Delcare a dynamic function
    uint256[] public nums;

    // create a function that show you what's actuly delete do
    function deleteOpration() public {
        // set elemnt to array
        nums = [1, 2, 3];
        // Here the trick delete as we learn form the array lesson the just replace it with the default value of the data type
        // So delete it's just rest the value
        delete nums[1]; // Result: [1, 0, 3]
    }

    /** Remove element defintly from the array we use shift to right algorithme */
    // we have array [1, 2, 3] we want to remove element 2 that have index 1 remove(1)
    // we shift the right of the array [1, 3, 3] and we delete last element
    // Result: [1, 3]
    // [1, 2, 3, 4, 5, 6] remove(2) --> [1, 2, 4, 5, 6, 6] --> [1, 2, 4, 5, 6]
    // [1] remove(0) --> [1] --> []
    function removeElement(uint256 _index) public {
        // Make sure that index is less then the length of the array
        require(_index < nums.length, "Index out of bound");

        // Copy element from righ to left
        for (uint256 i = _index; i < nums.length - 1; i++) {
            nums[i] = nums[i + 1];
        }
        // Then remove the last element
        nums.pop();
    }
}
