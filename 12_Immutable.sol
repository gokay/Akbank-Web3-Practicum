// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Immutable {
    //address public immutable owner = msg.sender; // Can only be initialized when deployed and can't be changed later. Also save gas.

    address public immutable owner;
    
    constructor() {
        owner = msg.sender;
    }

    uint public x;

    function foo() external {
        require(msg.sender == owner);
        x += 1;
    }

}