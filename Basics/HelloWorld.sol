/* You have to write what's the license of your file
If you don't write it The compiler will give you warning */
// SPDX-License-Identifier: MIT

/** pragma specifies the compiler version of Solidity.
    You can choose any version you want be the best practise to use ^version_you_want_and_up like ^0.8.13
    compiler version must be greater than or equal to 0.8.13 and less than 0.9.0
 */
pragma solidity ^0.8.13;

// Define our First smart contract
contract HelloWorld {
    // Let's define a variable to make our first contract
    /** We will cover all this on details in the next section 
        String is data type of our variable
        Public means we'll have read access to this variable after we deploy the smart contract 
     */
    string public message = "Hello World!";
}
