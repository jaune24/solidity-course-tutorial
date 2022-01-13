// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract A{
    int public x = 10;
    int y = 20;

    function getY() public view returns(int) {
        return y;
    }
    function fPrivate() private view returns(int) {
        return x;
    }
    function fInternal() internal view returns(int) {
        return x;
    }
    function fExternal() external view returns(int) { // cannot be called in this contract, more efficient than public on gas
        return x;
    }
    function getX() public view returns(int) {
        return fPrivate();
    }
}

contract B is A { // B is derived from A, like parent and child classes in java
    int public xx = fInternal(); // Internal is available to that contract and derived contracts
    // int public yy = fPrivate(); -> not allowed because private is only available to that contract
}

contract C{
    A public contractA = new A();
    int public xx = contractA.fExternal();
}