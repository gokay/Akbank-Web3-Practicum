// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Event{

    event Log(string  message, uint val);

    // up to 3 parameters can be indexed
    event IndexedLog(address indexed sender, uint val);

    // this is a transactional function
    function example() external {
        emit Log("foo", 123);
        emit IndexedLog(msg.sender, 790);
    }

    event Message(address indexed _from, address _to, string message);

    function sendMessage(address _to, string calldata message) external {
        emit Message(msg.sender, _to, message);
    }
}