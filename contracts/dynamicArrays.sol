// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract DynamicArrays{
    uint[] public numbers;

    function getLength() public view returns(uint) {
        return numbers.length;
    }
    function addElement(uint element) public {
        numbers.push(element);
    }
    function getElement(uint index) public view returns(uint) {
        if (index < numbers.length) {
            return numbers[index];
        }
        return 0;
    }
    function popElement() public {
        numbers.pop();
    }
    function createMemoryArray() public pure { // exmple of memory array
        uint[] memory arr = new uint[](3);
        arr[0] = 10;
        arr[1] = 20;
        arr[2] = 30;
    }
}