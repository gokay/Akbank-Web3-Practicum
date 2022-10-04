//SPDX-Licence-Identifier: IT
pragma solidity 0.8.7;

contract StateVariables {
    uint public myuint = 123; // State variable, save on the blockchain;

    function foo() external {
        uint nonStateVariable = 456; // local varieable; Not saved on the blockchain
    }

}