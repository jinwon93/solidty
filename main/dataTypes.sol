pragma solidity  ^0.8.10;


// boolean
// uint
// int
// address

contract Primitives{

    bool public boo = true;


    /*
        uint는 부호가 없는 정수를 의미한다 
        음수가 아닌 정수 
        int8   ranges from 0 to 2 ** 8 - 1
        uint16  ranges from 0 to 2 ** 16 - 1
        uint256 ranges from 0 to 2 ** 256 - 1
     */
    uint8 public u8 =1;
    uint public u256 = 456;
    uint public u = 123;


    /*
        음수
        int8 부터 int256까지 사용 할 수 있다.
        int256 ranges from -2 ** 255 to 2 ** 255 - 1
        int128 ranges from -2 ** 127 to 2 ** 127 - 1
    */
    int8 public i8 = -1;
    int public i256  = 456;
    int public i = -123;
    

    // int의 최소값 및 최대값 
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0xd148663B0417b774be662E9658725Bd7935feb4c;         


    /*
        솔리디티 데이터 유형
        - 고정 크기 바이트 배열
        - 동적 크기 바이트 배열 
    */
    bytes1 a = 0xb5;
    bytes1 b = 0x56;

    bool public defaultBoo; 
    uint public defaultUint;
    int public defaultInt;
    address public defaultAddr;
}