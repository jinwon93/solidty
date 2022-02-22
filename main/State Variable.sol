pragma solidity  ^0.8.10;



contract SimpleStorage{

    //숫자를 저장할 변수
    uint public num;

    // 변수를 사용하려면 트랜잭션을 전송해야 한다.
    function set(uint _num) public {
        num = _num;
    }
    
    // 트랜잭션을 보내지 않고 상태 변수에서 바로 읽을 수 있다 
    function get() public view returns (uint) {
        return num;
    }
}