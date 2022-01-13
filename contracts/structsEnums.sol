// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

struct Instructor {
    uint age;
    string name;
    address addr;
}

contract Academy{
    enum State {Open, Closed, Unknown}

    Instructor public academyInstructor;
    State public academyState = State.Open;

    constructor(uint _age, string memory _name) {
        academyInstructor.age = _age;
        academyInstructor.name = _name;
        academyInstructor.addr = msg.sender;
    }

    function changeInstructor(uint _age, string memory _name, address _addr) public {
        if (academyState == State.Open) {
            Instructor memory tempInstructor = Instructor({
                age: _age,
                name: _name,
                addr: _addr
            });
            academyInstructor = tempInstructor;
        }
    }
}

contract School{
    Instructor public schoolInstructor;
}
