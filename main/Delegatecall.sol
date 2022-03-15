pragma solidity ^0.8.10;




contract B {


    // 스토로지 레이아웃은 계약 A와 같아야한다..
    uint public num;
    address public sender;
    uint public value;


    function setVars (uint _num) public payable {

        num = _num;
        sender = msg.sender;
        value = msg.value;
    }
}


contract A {

    uint public num;
    address public sender;
    uint  public value;


    function setVars(address _contract , uint _num) public payable {
        
        // A의 스토리지가 설정되었지만 B는 수정되지 않는다.
        (bool success ,  bytes memory data) = _contract.delegatecall (
            abi.encodeWithSignature("setVars(uint256)", _num)
        );
    }
}