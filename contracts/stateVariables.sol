// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Property{
    int public price;
    string constant public location = "London";

    function f1() public pure returns(int) {
        int x = 34;
        x += 9;
        return x;
    }
}
