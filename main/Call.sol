pragma solidity ^0.8.10;



contract Receiver{

    event Receiver(address caller , uint amount , string message);

    fallback() external payable {
        emit Receiver( msg.sender, msg.value, "Fallback was called");
    }

    function foo(string memory _message , uint _x)  public payable returns (uint) {

        emit Receiver(msg.sender, msg.value, _message);

        return _x + 1; 
    }
}