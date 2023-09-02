//SPDX-License-Identifier:MIT
pragma solidity ^0.8.12;

//  contract testcontract{
//      string value;

//      constructor () public {
//          value = "myvalue";    }

//      function get() public view returns (string memory){
//      return value;
//      }

//      function set(string memory _value ) public {
//          value = _value;
//      }
//  }

 contract testcontract1{
     string name;

     constructor() public{
         name="what is your name?";
     }
     function get() public view returns (string memory){
         return name;
     }

     function set(string memory updatedname) public{
     name = updatedname;}

 }

// contract testcontract2 {
//     uint number;

//     constructor() public {
//         number = 5;
//     }

//     function get() public view returns (uint){
//         return number;
//         }
    
//     function addone(uint _number) public returns(uint){
//         number = _number+1;
//         return _number;
//     } 

//     function minusone(uint _number) public returns(uint){
//         number = _number-1;
//         return _number;
//     }


//     // function set(uint _number) public{
//     //     number=_number;
//     // }
// }



// contract testcontract3 {
//     uint firstnumber;
//     uint secondnumber;
//     uint sum;
//     uint difference;

//     constructor (){
//         firstnumber = 0;
//         secondnumber = 0;
//     }

//     // function getfirstnumber() public view returns(uint){
//     //     return firstnumber;
//     // }

//     // function getsecondnumber() public view returns(uint){
//     //     return secondnumber;
//     // }


//     // function set(uint _firstnumber, uint _secondnumber) public{
//     //     firstnumber=_firstnumber;
//     //     secondnumber=_secondnumber;
//     // }

//     function addboth( uint _firstnumber, uint _secondnumber) public returns (uint){
        
//         sum = _firstnumber + _secondnumber;
//     }

//     function getsum() public view returns (uint _sum){
//         return _sum = sum;
//     }

//         function getdifference() public view returns (uint _difference){
//         return _difference = difference;
//     }

//     function substractboth (uint _firstnumber, uint _secondnumber) public returns (uint){
//         difference = _firstnumber - _secondnumber;
//         return difference;
//     }

// }

// contract testcontract4 { 
// enum operation {compleated, pending, failed}
// operation public choice;

// constructor (){
//     address user;
//     uint first;
//     uint second;
//     string memory word;
// }

// function failed() public returns (string memory){
//     choice = operation.failed;  
// }

// function pending() public {
//     choice = operation.pending;
// }

// function get() public view returns(operation) {
//     return choice;
// }

// }



//adding and retrieving string from array
// contract testcontract5{

//     struct words{string word1; string word2;}
    
//     words[] public sentence;
//     function addelement (string memory word1, string memory word2) public returns (words memory) {
//         sentence.push(words(word1, word2)); 
        
//         }
//     }




// adding and retrieving string from an array


// contract testcontract6{
//     string[] public arrayy;
//     string name;

//     function set( string memory _name) public returns (string memory){
//         name = _name;
//     }

//     function addname () public {
//         arrayy.push ( name );
//     }

//     // function get() public view returns (string memory){
//     //     return arrayy;
//     // }  
// }




// contract testcontract7{
//     uint number; 
//     enum check {odd, even}
//     check public checkk;

//     function odd() internal {
//         checkk = check.odd;
//     }

//     function even() internal {
//         checkk = check.even;
//     }

//     function oddoreven () public returns(bool){
//         bool yes = true;
//         bool no = false;
//         if (number % 2 == 0){
//              even();}
//             else { odd();}

//         }

//         function get() public view returns (uint){
//     return number;
//     }

//     function set(uint _number ) public {
//         number = _number;
//     }
        

// function what() public view returns (string memory) {
//     if (checkk == check.odd)
//     {return ("odd");}
//     else { return("even");}

// }

// }



// // no error but no purpose 
// // code for trannsaction 

// contract testcontract8{

//     address payable wallet;
//     constructor() public {
    
//     }
//     function addressinput(address payable _wallet) public{
//             wallet = _wallet;}
    
//     mapping (address => uint256) public balance;
//     function addone() public payable {
//         balance [msg.sender] += 1;
//         wallet.transfer(msg.value);
//     }
//     function Sender() public view returns(address) {
//         return msg.sender;

//         }
//             function bal() public view returns(address) {
//         return wallet;

//         }
//     }


// contract testcontract9{
//     address owner;
//     uint publiccount;

//     constructor(){
//         msg.sender = owner;
//     }
    
// function addperson(string memory _fname)
// public onlyowner{}

// modifier onlyowner(){require.sender = owner;}

// struct person {
//     uint _id;
//     string _fname;
//     string _lname;
// }

// function addperson (
//     string memory _fname,
//     string memory _lname
// )
// public onlyowner

// {incrementcount()
// {
// personcount += 1
// }
// }

// }



// contract testcontract10{
//     address owner;
//     uint peoplecount;

//     function incrementcount() internal {
//         peoplecount += 1;
//     }



//     struct people {string _fname; string _lname;}

//     function addpeople(string memory _firstname, string memory _lastname)
//     public{
//         people [peoplecount] = people(peoplecount, _firstname, _lastname);
//     }





//     constructor() public {
//         owner =  msg.sender;}
// }