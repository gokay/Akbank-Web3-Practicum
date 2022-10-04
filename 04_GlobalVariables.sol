// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract GlobalVariables {

    function globalVars() external view returns (address, uint, uint) {
        address sender = msg.sender; // Global variable of the address which calls this function
        uint timeStamp = block.timestamp;
        uint blockNum = block.number;

        return (sender, timeStamp, blockNum);
    }
}