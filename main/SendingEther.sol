pragma solidity ^0.8.10;



//transfer (2300 gas, throws error)
// send (2300 gas, returns bool)
// call (forward all gas or set gas, returns bool)


contract ReceiveEther{


      /*
    Which function is called, fallback() or receive()?

           send Ether
               |
         msg.data is empty?
              / \
            yes  no
            /     \
receive() exists?  fallback()
         /   \
        yes   no
        /      \
    receive()   fallback()
    */



    // 수신
    receive() external payable {}


    // msg.data 있으면 fallback 함수 호출
    fallback() external payable {}


    function getBalance()  public view returns (uint) {

        return address(this).balance;
    }
}


contract SendEher{

    function sendViaTransfer(address payable _to) public payable {

        _to.transfer(msg.value);
    }

    function sendViaSend(address payable _to) public payable {
        // Send 성공 실패를 bool으로 변환
        // 현재 권장되지 않은방법
        bool sent = _to.send(msg.value);
        require(sent , "Failed to send Ehter");
    }


    function sendViaCall(address payable _to)  public payable {
        // Call은 성공 실패를 bool 값으로 변환
        // 현재 이더 관련 권장되는 사용방법 
        (bool sent , bytes memory data) = _to.call(value : msg.value)("");
        require(sent , "Failed to send Ehter");
    }
}