// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract VendingMachine {

    // state variables
    // Address holds a 20 byte value which is the size of the etherum address
    // We will set the address of the deployer of the smart contract
    address public owner;

    // mapping of etherum addresses to the number of cokes each address owns
    // public access modifier
    mapping (address => uint) public cokeBalances;

    // set the owner as th address that deployed the contract
    // set the initial vending machine balance to 100
    /* Constructor is a special function declared using constructor keyword. 
       It is an optional funtion and is used to initialize state variables of a contract. 
       Following are the key characteristics of a constructor.
       
       A contract can have only one constructor.

       A constructor code is executed once when a contract is created and it is used to initialize contract state.

       After a constructor code executed, the final code is deployed to blockchain. 
     This code include public functions and code reachable through public functions */

     // In the constructor set the owner here using the special global variable msg and the property sender
     // property sender which holds the address of the originator of the function call
     // address of the person who deployed the contract
     // and then set the coke vending machine balance
     // address(this) - address of the current contract
    constructor() {
        owner = msg.sender;
        cokeBalances[address(this)] = 100;
    }

// Gets the Vending machine Balance
// public function can be run by anybody
// view - this function does not modify anything on the blockchain but can read data from the blockchain
// will retun an unsigned integer of the balance of coke in the vending machine.

    function getVendingMachineBalance() public view returns (uint) {
        return cokeBalances[address(this)];
    }

    // Let the owner restock the vending machine to add more cokes to the vending machine
    // takes the number of items to restock as an argument
    // since we are going to update the value in the blockchain we do not specify view / pure
    // We can use require function to check and allow only owner can restock the vending machine
    // otherwise provide an error message

    function restock(uint amount) public {
        require(msg.sender == owner, "Only the owner can restock.");
        cokeBalances[address(this)] += amount;
    }

    // Purchase cokes from the vending machine
    // payable - any function that needs to recieve ether, without this payable keyword you cannot receive ethers
    // Decrease the coke count of the vending machine
    // Increase the coke count of the purchaser
    // Check for stock in the vending machine and give error messages
    // Check the amount coming in is enough to buy the coke or error out
    function purchase(uint amount) public payable {
        require(msg.value >= amount * 2 ether, "You must pay at least 2 ETH per coke");
        require(cokeBalances[address(this)] >= amount, "Not enough coke in stock to complete this purchase");
        cokeBalances[address(this)] -= amount;
        cokeBalances[msg.sender] += amount;
    }
}


/*
*********************************************************************************************

https://remix-project.org/

https://remix.ethereum.org/ - Online Editor

https://github.com/ethereum/remix-desktop/releases - can also have desktop version installed.

1) Create a new file
2) Enter the name of the file - vendingmachine.sol
3) After completion of the code
4) Compile code (using Solidity Compiler option) - Make sure to select the compiler to match the version specified in this line
pragma solidity ^0.8.11; - > Click on Compile vendingmachine.sol (CTRL+S -> For compiling)
5) Now Deploy your contract by using the Deploy & run transactions options - on successful deployment you will see the contract show up under Deployed Contracts
6) Now click on the Deployed Contracts to test/run your smart contract.


**********************************************************************************************

How to test this smart contract after deployment
************************************************

1) Make sure to choose Remix VM(London)
1) Owner - Check the both the address
2) Click on -> getVendingMachineBalance  - should give you 100
3) change the account other than owner - > Using the Account field on the top

4) add 3 ether to the value and enter purchase 2 (cokes) and clicl -> purchase - it should error out saying not enough amount
The transaction has been reverted to the initial state.
Reason provided by the contract: "You must pay at least 2 ETH per coke".

5) Change ethers to 4 enter purchase 2 cokes - should work

6) getVendingMachine - should give you 98

6) change address-> copy the address of the user who purchased the code and enter the address
in cokeBalances and check coke balance - you should see 2

7) restock -> 2 - with non owner user - it should error out

The transaction has been reverted to the initial state.
Reason provided by the contract: "Only the owner can restock.".
Debug the transaction to get more information.

8) restock -> 2 - as owner should work

9) To know the owner address click -> owner

9) getVendingMachine - should give you 100

*/
