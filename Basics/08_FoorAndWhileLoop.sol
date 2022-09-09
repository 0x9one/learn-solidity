// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/** Don't write loops that are unbounded as this can hit the gas limit, causing your transaction to fail.
For the reason above, while and do while loops are rarely used. 
The bigger number of loops the more gas it will use, keep the number of loops small and your gas cost low */

contract Loop {
    function forLoop() external pure {
        // Start point; End Point; Increment the start point by one i++
        for (uint256 i = 0; i < 10; i++) {
            if (i == 3) {
                // Skip to the next iteration
                continue;
            }

            if (i == 5) {
                // Exit loop
                break;
            }
        }
    }

    function whileLoop() external pure {
        uint256 i = 0;
        while (i < 10) {
            // code
            i++;
        }
    }
}
