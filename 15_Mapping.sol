// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

// Mapping 
// How to declare a mapping (simple and nested)
// set, get, delete

// ["alice", "bob", "charlie"]
// {"alice":true, "bob":true, "charlie":true}

// Mapping => Python Dictionary [key => value]

contract Mapping {
    mapping(address => uint) public balances;
    mapping(address => mapping(address => bool)) public isFriend;

    address public aa;
    address public bb;
    uint public bal;
    uint public bal2;

    function examples() external {
        balances[msg.sender] = 123;

        bal = balances[msg.sender];
        bal2 = balances[address(1)]; // 0;
        balances[msg.sender] += 456; // 123 + 456 = 579

        //delete balances[msg.sender]; // 0;
        aa = msg.sender;
        bb = address(this);

        //isFriend[msg.sender][address(this)] = true;
        isFriend[msg.sender][address(1)] = true;
    }
}