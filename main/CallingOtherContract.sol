pragma solidity ^0.8.10;



// 기존 계약 방법은 A.foo(x.y.z) 부른다 
// Callee은 권장하지 않는 방법이다 
// 공부용!
contract Callee {

    uint public x;
    uint public value;



    function setX(uint _x) public returns (uint) {

        x  = _x;
        return x;
    }


    function setXandSendEhter(uint _x) public payable returns (uint , uint) {

        x  = _x; 
        value  = msg.value;
        return (x , value);
    }
}

contract Caller {

    function setX(callee _callee , uint  _x)  public {

        uint  x  = _callee.setX(_x);
    }

    function setXFromAddress(address _addr , uint _x) public {
        Callee callee = Callee(_addr);
        callee.setX(_x);
    }


    function setXandSendEher(Callee _callee , uint _x) public payable {

        (uint x , uint value) = _callee.setXandSendEhter{value:msg.value}(_x);
    }
}