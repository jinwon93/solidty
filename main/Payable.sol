pragma solidity ^0.8.10;



contract Payable {


    address payable public owner;


    constructor() payable {
        owner = payable(msg.sender);
    }


    // Ether를 입금하는 기능
    // 계약의 잔액은 자동으로 업데이트 
    function deposit() public payable {}


    /// 결제가 불가능할떄 호출한다
    function notPayable() public {}

    // 인출
    function withdraw() public {
        // 계약에 저장된 Ether의 양을 가져온다 
        uint amount  = address(this).balance;


        // 모든 Ether를 소유자에게 전송
        (bool success , ) = owner.call{value: amount} ("");
        require(success , "Failed to send Ether");
    }


    // 계약에서 Ether를 입력해서 주소로 전송하는 기능 
    function transfer(address payable _to , uint _amount) public {
        
        // to로 지불로 선언
        (bool  success ,  ) =  _to.call(value : _amount) ("");
        require(success ,  "Failed to send Ether");
    
    }

}





