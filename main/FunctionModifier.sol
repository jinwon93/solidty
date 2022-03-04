pragma solidity ^0.8.10;



contract FunctionModifier{


    address public owner;
    uint public x = 10;
    bool public locked;


    constructor(){
        //트랜잭션을 계약의 소유자로
        owner = msg.sender;
    }


    modifier onlyOwner(){
        require(msg.sender == owner , "Not  owner");
        
        // 밑줄은 내부에서만 사용되는 특수 문자.
        // 함수 수식어와 Solidity를 알려줍니다.
        // 나머지 코드를 실행.
        _;
    }


    modifier validAddress(address _addr){
        require(_addr != address(0) , "Not valid address");
        _;
    }


    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOner){
        owner =  _newOwner;
    }


    modifier noReentrancy(){
        require(!locked ,  "No reentrancy");

        locked = true;
        _;
        locked = false;
    }

    function decrement(uint i) public noReentrancy{
         
         x -= i;

        if (i > 1){
            decrement(i - 1);
        }
    }
}