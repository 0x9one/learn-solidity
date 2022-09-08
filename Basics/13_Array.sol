// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/** Array
 * Dynamic or fixed size
 * Initialization
 * Insert push, get, update, delete, pop, length
 * Creating array in memory
 * Returnin array from function
 */

contract Array {
    /** Dynamic and fixed size array */
    // Create dynamic array as a state variabel
    // Dynamic means that the size of the array can change
    uint256[] public dynamicArr;

    // Create Fixed array as a state variable
    // Fixed means that the size of the array can't change we can not (Shrink it or grow it)
    // Between bracket you put the size you want for the array like here 3 elements
    uint256[3] public fixedArr;

    /** Initialization array */
    // Dynamic array
    uint256[] public peopleAge = [13, 18, 20];

    // Fixed array
    // If the size not much the element will not be compiled
    // So if you put the size of the array 3 you must have 3 element no more no less
    uint256[3] public dogAge = [1, 3, 4];

    /** Operations on array */
    uint256[] public dynamicNums = [1, 2, 3];
    uint256[3] public fixedNums = [10, 20, 100];

    // Push operation
    function pushElement() external {
        // You can just push a value to dynamic array not fixed one
        // push() add the new vlaue to the last of the array
        // arrayName.push(Value_you_want_to_add);
        dynamicNums.push(4); // Result: [1, 2, 3, 4]

        // Get array element by index work for Dynamic and Fixed array size
        // Arrays always start with index 0
        // The index of the first element on the array is 0
        // arrayName[index];
        // You can also get the value from the array and intialize to a variable
        uint256 x = dynamicNums[2];

        // Update element in the array
        // You have to get it by index and set a new value
        // Like when you declare a variable and give it new vlaue
        // arrayName[index] = new_value;
        dynamicNums[2] = 47; // Result:  [1 , 2, 47, 4]

        // Delete element from the array
        // delete arrayName[index];
        // Delete will replace the vlaue with default one and the length of the array stay the same
        // in our case default value of uint type its 0
        delete dynamicNums[1]; // Result: [1, 0, 47, 4];

        // Shrink the array
        // We use method pop that remove the last element form the array
        // arrayName.pop();
        dynamicNums.pop(); // Result: [1, 0, 47];

        // Length of the array we use
        // arrayName.length;
        uint256 arrLength = dynamicNums.length;

        // Create array in memory
        // Array in the memory has to be fixed size type
        // dataType[] memory arrayName = new dataType[](fixed_size)
        // You can't push or pop with memory array
        // You can just get and update
        uint256[] memory memArr = new uint256[](3);

        // Update element in the memory array
        // arrayName[index] = new_value;
        memArr[1] = 123;
    }

    // Function return array
    // we use memory in returns to make copy in the memory before return the array
    // Return array wthin function is not recommended
    // Becuase the bigger the array the more gas it will use
    function retArray() external view returns (uint256[] memory) {
        return dynamicNums;
    }
}
