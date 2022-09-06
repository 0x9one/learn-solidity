// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/** Data types are two types
 * Values: means that the data stored a value and that what we will discover today
 * References: Do not store a value instead they store a reference to where the actual data is stored 
 We will discover it later
 */

/**  Primitive data types available in Solidity
 * Boolean: true or false
 * uint: Unsigned integer. A number greater than or equal 0
 * int: Accept both negatives and positives numbers
 * address
 * bytes32: You will use it when you will work with the cryptographic hash function available in Solidity called
 catch act 256
 */

contract Primitives {
    // Default value: Flase
    bool public check = true;

    /** uint type have a different sizes
     * uint = uint256 -> 0 to 2**256 -1
     * uint16 -> 0 to 2**16 - 1
     * uint8 -> 0 to 2**8 - 1
     * Default value: 0
     */
    uint256 public noNegativeNumber = 100;
    uint8 public u8 = 10;

    /** int type have a different sizes
     * int = int256 -> -2**255 to 2**255 - 1
     * int128 -> -2**127 to 2**127 - 1
     * Default value: 0
     */
    int256 public wholeNumber = -256;

    // To know max and mix of int
    int256 public minInt = type(int256).min;
    int256 public maxInt = type(int256).max;

    // Default value: 0x0000000000000000000000000000000000000000
    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    /** Solidity presents two type of bytes types :
     * fixed-sized byte arrays
     * dynamically-sized byte arrays.
     * The term bytes in Solidity represents a dynamic array of bytes. 
     It’s a shorthand for byte[] .
    */
    bytes1 a = 0xb5; //  [10110101]
    bytes1 b = 0x56; //  [01010110]
}
