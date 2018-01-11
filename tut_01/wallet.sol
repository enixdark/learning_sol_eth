pragma solidity ^0.4.19;

contract Wallet {
    string public name;
    uint128 private amount;
    
    function Wallet(string nName, uint128 nAmount) {
        name = nName;
        amount = nAmount;
    }
    
    function setName(string nName) {
        name = nName;
    }
    
    function getName() returns(string) {
        return name;
    }
    
    function setAmount(uint128 nAmount) {
        amount = nAmount;
    }
    
    function getAmount() returns (uint128) {
        return amount;
    }
    
    
}