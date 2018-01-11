pragma solidity ^0.4.19;

contract Transaction {
    event SenderLogger(address);
    event ValueLogger(uint);

    address private owner;

    modifier isOwner {
        require(owner == msg.sender);
        _;
    }

    modifier validValue {
        require(msg.value >= 1 ether);
        _;
    }

    function Transaction() {
        owner = msg.sender;
    }

    function () payable isOwner validValue {
        
    }
}