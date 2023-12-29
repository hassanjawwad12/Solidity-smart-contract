//SPDX-License-Identifier: MIT 
pragma solidity ^0.8.11;

contract Greeting {

    string public name; 
    //even if it was declared private it would have been visible 
    string public greetingPrefix= "Hello";

    //declare a constructor function 
    constructor(string memory initialName) {
        name=initialName;
    }
    
    function setName(string memory newName) public
    {
       name=newName; 
    }

    //view reads data but does not change any data on blockchain 
    //pure neither reads nors modifies 
    function getGreeting ( ) public view returns (string memory) {
         return  string(abi.encode(greetingPrefix,name));
    }

    //helper method for string concatenation 
}


