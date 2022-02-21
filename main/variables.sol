pragma solidity  ^0.8.10;

/*
    1.local 
        -> 함수내 선언
        -> 블록체인에 저장되지 않음
    2.state
        -> 기능 밖에 선언
        -> 블록체인에 저장됨
    3.global
        -> 블록체인에 대한 정보를 제공      
 */
contract variables{

    //상태 변수는 블록체인에 저장된다 
    string public text = "Hellow";
    uint public num = 123;
    

    function dosomething() public {
        // 지역 변수는 블록체인에 저장되지 않는다
        uint  i = 456;
    }

    
    uint timestamp = block.timestamp; // 현재 블록 타임스탬프
    address sender = msg.sender; // 발신자 주소 
}