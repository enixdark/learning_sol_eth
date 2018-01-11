pragma solidity ^0.4.19;

import "browser/strings.sol";

contract TestStrings {

    using Strings for string;

    function testConcat(string _base) returns (string) {
        return _base.concat("_test");
    }

    function testPos(string _base) returns (int) {
        return _base.strpos("_t");
    }
}