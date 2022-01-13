// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

// costs money to use storage, not memory

contract A{
    string[] public cities = ["London", "Berlin"]; // storage- it is a state variable

    function f_memory() public view {
        string[] memory s1 = cities; // memory- memory id essentially is using a copy of the state var, state var is unchanged because memory identifier is used, data location must be specified for data types other than int/uint, bool and other 'simple' data types
        // string[] s2; -> error
        s1[0] = "New York";
    }
    function f_storage() public {// cannot put view tag in here
        string[] storage s1 = cities; //storage- storage id essentially makes a reference to the state var, this function modifies the state var, costs money to use storage
        // string[] s2; -> error
        s1[0] = "New York";
    }
}
