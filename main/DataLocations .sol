pragma solidity ^0.8.10;


/*
    변수는 데이터의 위치를 명시적으로 지정하기 위해 저장소 / 메모리- 또는 CALDATA로 선언
    storage variable은 상태변수(블록체인에 저장)
    메모리 : 변수는 메모리에 있으며 함수를 호출하는 동안 존재
    CALDATA : 함수 인수를 포함하는 특수 데이터 위치 , 외부 함수에만 사용
 */

contract DataLocations{

    uint[] public arr;
    mapping(uint => address) map;

    struct MyStruct{
        uint foo;
    }

    mapping(uint =>  MyStruct) myStructs;
}


function f() public {


    // 상태변수 호출
    _f(arr , map , myStructs[1]);

    //얻는다
    MyStruct storage myStruct = myStruct[1];

    // 만든다
    MyStruct memory myMemStruct = MyStruct(0);
}


function _f(
    uint[] storage _arr,
    mapping (uint=>address) storage _map;
    MyStruct storage _myStruct
)internal{

    // 저장변수
}


// 메모리 변수를 반환
function g(uint[] memory _arr) public returns (uint[] memory){
    // 메모리를 배열형태로 
}

function h(uint[] calldata _arr) external{  
    // caldata 형태로
}