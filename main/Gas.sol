pragma solidity  ^0.8.10;


//가스는 연산의 단위이고 트랜잭션에 쓰인 가스의 양 , 가스의 가격은 가스마다 지불할 이더의 가격을 말한다; 

contract Gas {

    uint public i = 0;


    function forever() public {

        while (true){
            // 가스가 다 소모될 때까지 
            i + 1 ;
        }
    }
}