pragma solidity  ^0.8.10;



contract Gas {

    uint public i = 0;


    function forever() public {

        while (true){
            // 가스가 다 소모될 때까지 
            i + 1 ;
        }
    }
}