// SPDX-License-Identifier: MIT
pragma solidity ^0.4.17;

contract SimpleStorage {
    // boolean, uint, int, address, bytes
//    bool hasFavoriteNumber = true;
//    uint256 favNumber = 12;
//    string favNumInText = "twelve";
//    int256 favInt = 5;
//    address myadd =0xB6cdB797360c10Af18f293D698ad30D122A3FD5D;
//    bytes32 favbytes = "cats" ;

    uint256 public favNumber;
    

    //People public person = People({favNumber:2, name:"ujjawal"});
// // we can create 
 // uint256 public myfavNumber;
 // uint256 public yourfavNumber;

 // // now we can create a multiple of these accounts like 
 // People public person2 = People({favNumber:4, name:"notujjawal"});
 // People public person3 = People({favNumber:25, name:"isujjawal"});
// //  but this is a tedious work and we dont wanna do this

//  so to deal with this we create an array , an array is a data structure to diif types of obj
    //uint256[] public favNumberList;       
    People[] public people;

    struct People{ 
         // now we have a people type we can use 
         uint256 favNumber;
         string name;

     }


    // public before favNumber is a visibility specifier
    // from which anyone who sees this smart contract can 
    // see what is stored in fav number
    // other visibility specifiers are private,external, internal.
    // if we do not specify from where to start (fav num )it will start from zero
    function store(uint256 _favNum) public {
        favNumber = _favNum;
      //  favNumber = _favNum+1;
    } 
    function retrieve() public view returns(uint256){
        return favNumber;
    }
        // (view) function and (pure) function does not use any gas fees 
        // view and pure function does not allows any modification in blockchain
        //pure function in addition to that does not allows to read from blockchain

       // function add() public pure returns(uint256){
           // return favNumber;

    function addPerson(string memory _name, uint256 _favNum) public {
        people.push(People(_favNum, _name));
           
    } 
    }




