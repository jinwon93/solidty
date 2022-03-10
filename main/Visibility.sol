pragma solidity ^0.8.10;



// 함수와 상태 변수는 다른 계약으로 접근할 수 있는지 여부를 선언해야 한다 
// public ->  모든 계약 및 계정이 호출할 수 있습니다.
// private -> 계약 내부에서만
// internal -> 상속하는 내부 계약만
// external -> 다른 계약 및 계정만 호출할 수 있습니다.
contract BASE {
    
    // private 상속 계약은 이 함수를 호출할 수 없다 
    // 전용 함수만 호출
    function privateFunc() public pure returns (string memory){
        return "private funtion called";
    }

    function testPrivateFunc() public pure returns (string memory) {
        return privateFunc();
    }

    // internal  내부 함수를 호출할 수 있다.
    // 계약을 승인하는 내부 계약 
    function internalFunc() internal  pure returns (string memory) {
        return "internal funtion called";
    }

    function testInternalFunc()  public pure virtual returns (string memory){
        return internalFunc();
    }

    // public 공용함수를 호출 할 수 있다 .
    function publicFunc() public pure returns (string memory) {
        return "public funtion called";
    }
    // external 외부 함수만 호출할 수 있다 
    function externalFunc() external pure returns (string memory) {
        return "external function called";
    }


    string private privateVar = "my private variable";
    string internal internalVar = "my internal variable";
    string public publicVar = "my public variable";

}



contract Child is Base{

    //하위 계약 내에서 내부 함수 호출을 호출한다
    function testInternalFunc() public pure override returns (string memory){
        return internalFunc();
    }
}