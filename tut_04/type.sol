pragma solidity ^0.4.19;

contract Type {
    bool myBool = false;
    int8 Int = 1;

    uint uInt = 255;

    string myString;

    uint[] myIntArray;

    byte myByte;

    bytes1 myByte1;
    bytes32 myByte32;

    enum Action {
        ADD,
        UPDATE,
        DELETE
    }

    Action myAction = Action.DELETE;


    address private myAddress;
    
    function assignAdress() {
        myAddress = msg.sender;
        myAddress.balance;
        myAddress.transfer(10);
    }

    uint[] myArray = [1,2,3,4];

    function arrFunc() {
        myArray.push(1);
        myArray.length;
        myArray[0];
    }

    uint[10] myFixedArr;

    struct Account {
        uint balance;
        uint limit;
    }

    Account account;

    function structFunc() {
        account.balance = 0;
    }

    mapping (address => Account) mAccount;

    function () payable {
        mAccount[msg.sender].balance += msg.value;
    }

    function getBalance() returns (uint) {
        return mAccount[msg.sender].balance;
    }
}