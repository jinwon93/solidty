pragma solidity ^0.8.10;



// fallback을 싱행될 경우

// 존재하지 않는 함수를 호출한다 
//  수신이 없거나 msg.data가 비어있지 않을때
// 전송으로 호출될떄
contract Fallback {


    event Log(uint gas);


    //외부 함수를 선언해야 한다
    Fallback() external payable {

        // send/tranfer  2300 가스 추가
        // call  가스를 모두 포함
        emit Log(gasleft(););
    }
        

    function getBalance() public view returns (uint) {
        // 잔액확인 
        return address(this).balance;
    }
}

contract SendToFallback {

    function transferToFallback (address payable _to) public payable {

        _to.tranfer(msg.value);
    }


    function callFallback(address payable _to)  public payable {

        (bool sent , ) =  _to.call{value : msg.value}("");

        require(sent  , "Faild to send Ehter");
    }
}