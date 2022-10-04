//SPDX-Licence-Identifier: IT
pragma solidity 0.8.7;

// Data types - values and references



contract HelloWorld {
    string public myString = "hello world";

    bool public b = true;
    uint public u = 123; // uint = uint256 0 to 2**256 -1
                         //        uint8   0 to 2**8 -1
                         //        uint16  0 to 2**16 -1

    int public i = -123; // int =  int256 -2**255 to 2**255 - 1   
                         //        int128 -2**127 to 2**127 - 1   

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c; //40 CHAR

    bytes1 a1 = 0xb5; //  [10110101]
    bytes1 b1 = 0x56; //  [01010110]

/*
Variables
There are 3 types of variables in Solidity:

1.State Variables
-Declared outside the function.
-Stored on the blockchain.

2.Local Variables:
-Not stored on the blockchain.
-Declared inside the function.

3.Global:
-Blockchain related variables.
*/
}