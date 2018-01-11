pragma solidity ^0.4.19;



// define collection function 
interface General {
    function checkValue(uint value) returns (bool);
    function loan() returns (bool);
}

contract Bank is General {
    uint amount;

    // allow user can loan  
    uint constant MAX_DEBIT = 100;
    
    function Bank(uint nAmount) {
        amount = nAmount;
    }
    
    function deposit(uint value) {
        amount += value;
    }
    
    function withDraw(uint value, bool allow_debit) {
        if((allow_debit && amount >= MAX_DEBIT && value <= MAX_DEBIT) ||
            (!allow_debit && checkValue(value)))
            amount -= value;
    }
    
    function balance() returns (uint) {
        return amount;
    }
    
    function checkValue(uint value) returns (bool) {
        return amount >= value;
    }
    
    function loan() returns (bool) {
        return amount > 0;
    }
    
    function getLoad() returns (uint) {
        if(loan()){
            return 0;
        }
        return amount;
        
    }
}

contract Wallet is Bank(0) {
    string public name;

    function Wallet(string nName, uint nAmount) {
        name = nName;
        amount = nAmount;
    }
    
    function setName(string nName) {
        name = nName;
    }
    
    function getName() returns(string) {
        return name;
    }
    
    function setAmount(uint nAmount) {
        amount = nAmount;
    }
    
    function getAmount() returns (uint) {
        return amount;
    }
    
    
}