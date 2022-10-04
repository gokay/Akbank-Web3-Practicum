// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

// Data locations - storage = state variable, memory = data is loaded onto memory, calldata = like memory but used for function inputs

contract Datalocations {

    struct MyStruct {
        uint foo;
        string text;
    }

    mapping(address => MyStruct) public myStructs;

    function examples(uint[] memory y, string memory s) external returns(MyStruct memory) {    
        myStructs[msg.sender] = MyStruct({foo:123, text:"bar"});

        MyStruct storage myStruct = myStructs[msg.sender]; //can modify the variable myStruct
        myStruct.text = "foo";

        MyStruct memory readOnly = myStructs[msg.sender]; // save to memory and can't modify variable readOnly
        readOnly.text = "456";     

        return readOnly;    
    }
}