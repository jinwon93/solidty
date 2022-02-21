pragma solidity  ^0.8.10;


contract Counter{

    uint public count;

    //현재 카운트를 가져오는 함수
    function get() public view returns (uint){
        return count;
    }

    // 카운트 증가 1
    function inc()  public{
        count += 1;
    }

    // 카운트 감소 1
    function dec() public{
        count -= 1;
    }
}