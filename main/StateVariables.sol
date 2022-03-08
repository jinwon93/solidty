pragma solidity ^0.8.10;


contract A {

    string public name = "Contract A" ;

    function getName() public view returns (string memory){
        return name;
    }
}



contract C is A {

    constructor() {
        // 상속된 상태변수를 재정의하는 방법
        name = "Contract C";
    }
}