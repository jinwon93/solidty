pragma solidity ^0.8.10;



contract Event {
    // 이벤트 선언
    // 최대 3개의 변수를 인덱싱화
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello World!");
        emit Log(msg.sender, "Hello EVM!");
        emit AnotherLog();
    }
} 