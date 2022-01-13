// SPDX-License-Identifier: GPL-3.0

// pragma solidity >=0.5.0 <0.9.0;
pragma solidity ^0.8.0;

// use safe math to avoid overflows and underflows for lower solidty versions
// using SafeMath for int256;
// new solidity has safety checks built in (i think 0.8.0+)
// unchecked {..} to use 0.8.0+ without overflow/underflow checks

contract Property{
    // bool types
    bool public sold;
    // int types
    uint8 public x = 255;
    int8 public y = -10;

    function f1() public {
        x += 1;
    }
}