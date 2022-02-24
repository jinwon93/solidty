pragma solidity  ^0.8.10;

contract Mapping {
    mapping(address ==> uint) public myMap;

    function get(address _addr) public view returns (uint){

        //매핑은 항상 값을 반환합니다
        // 값을 설정하지 않은 경우 기본값을 반환
        return myMap[_addr];
    }

    function set (address _addr , unit _i) public {
        
        // 이 주소 없데이트
        myMap[_addr] = i;
    }

    function remove(address _addr) public {
        //값 재설정
        delete myMap[_addr];
    }
}


contract NestedMapping{

    //중첩 Mapping (주소에서 다른 Mapping으로 이동 )
    mapping (address=> mapping(uint => bool)) public nested;

    function get(address _addr1 , uint _i) public view returns (bool){
        // 중첩된 매핑에서 값을 가져올 수 있습니다.
        // 초기화되지 않은 경우에도
        return nested[_addr1][_i];
    }

    function set(
        address _addr1,
        uint _i,
        bool _boo
    ) public (
        nested[_addr1][_i] = _boo;
    )

    function remove(address _addr1 , uint _i) public{
        delete nested[_addr1][_i];
    }
}