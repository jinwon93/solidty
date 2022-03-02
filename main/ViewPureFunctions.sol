pragma solidity ^0.8.10;


/*
    getter -> view or pure로 선언한다
    view ->  상태가 변경되지 않는다
    pure -> 상태변수가 변경되거나 읽을수 없다
 */

contract ViewAndPure{

    uint public x = 1;
    
    //수정 x
    function addTox(uint y) public view returns (uint){
        return x + y;
    }

    //수정 0 
    function add (uint i , uint j ) public pure returns (uint) {
        return i + j;
    }
}