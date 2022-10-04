// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


// execution cost	21442 gas (Cost only applies when called by a contract)
contract Constants {
    // coding convention to uppercase constant variables
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint public constant MY_UINT = 123;
}


// execution cost	23575 gas (Cost only applies when called by a contract)
contract Var {
    address public MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint public MY_UINT = 123;    
}