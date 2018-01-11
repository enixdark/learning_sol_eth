pragma solidity ^0.4.19;

import "browser/library.sol";

contract Test {
    using IntExtended for uint;

    function testIncreament(uint _base) returns (uint) {
        return IntExtended.increment(_base);
    }

    function testDecrement(uint _base) returns (uint) {
        return IntExtended.decrement(_base);
    }

    function testIncrementByValue(uint _base, uint _value) returns (uint) {
        return _base.incrementByValue(_value);
    }
    
    function testDecrementByValue(uint _base, uint _value) returns (uint) {
        return _base.decrementByValue(_value);
}
}