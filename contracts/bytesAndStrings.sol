// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract BytesAndStrings{
    bytes public b1 = 'abc';
    string public s1 = 'abc';

    function addJToB1() public {
        b1.push('J');
    }
    function getElementOfB1(uint index) public view returns(bytes1) {
        return b1[index];
    }
    function getLenghtOfB1() public view returns(uint) {
        return b1.length;
    }
}