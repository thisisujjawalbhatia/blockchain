// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

contract Greeting{
    string public name;
    string public greetingPrefix = "Hello ";

    constructor(string memory initialname){
        name = initialname;
    }

    function setName(string memory newname) public {
        name = newname;
    }

    function getGreeting() public view returns(string memory){
        return string(abi.encodePacked(greetingPrefix,name));
    }
}
