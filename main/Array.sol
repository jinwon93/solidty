pragma solidity  ^0.8.10;


contract Array {

    //배열을 초기화하는 여러 가지 방법
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];

    //고정 크기 배열  , 요소가 0으로 초기화 
    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint){
        return arr[i];
    }
}