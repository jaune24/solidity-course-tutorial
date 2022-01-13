// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Property{
    int price;
    string location = "London";
    address owner;
    int immutable area; // can only change in constructor and that is it, constant identifier doesnt allow modification in constructor

    constructor(int _price, string memory _location, int _area) {
        price = _price;
        location = _location;
        owner = msg.sender;
        area = _area;
    }

    function setPrice(int _price) public {
        price = _price;
    }
    function getPrice() public view returns(int) {
        return price;
    }
    function setLocation(string memory _location) public {
        location = _location;
    } 
    function getLocation() public view returns(string memory) {
        return location;
    }
    function getOwner() public view returns(address) {
        return owner;
    }
    function getArea() public view returns(int) {
        return area;
    }
}