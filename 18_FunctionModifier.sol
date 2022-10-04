// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


// Function modifier - reuse code before and / or after function
// basic, input, sanditch

contract FunctionModifier {
    bool public paused;
    uint public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }

    function inc() external {
        require(!paused, "paused");
        count += 1;
    }

    function dec() external {
        require(!paused, "paused");
        count -= 1;
    }

    modifier whenNotPaused(){
        require(!paused, "paused");
        _; // calls the function which is wrapped
    }

    function inc1() external whenNotPaused{
        count += 1;
    }

    function dec1() external whenNotPaused{
        count -= 1;
    }

    function incBy(uint _x) external whenNotPaused {
        require(_x < 100, "x >= 100");
        count += 1;
    }

    modifier cap(uint _x) {
        require(_x < 100, "x >= 100");
        _;
    }

    function incBy1(uint _x) external whenNotPaused cap(_x) {
        require(_x < 100, "x >= 100");
        count += 1;
    }

    modifier sanditch(){
        // code here
        count += 10;
        _;
        // more code here
        count += 2;
    }

    function foo() external sanditch {
        count += 1;
    }
}