pragma solidity ^0.8.10;


// 계약을 생성할 떄 실행되는 함수 


// Base contract X
contract X{
    string public name;


    constructor(string memory _name){
        name = _name;
    }
}



// Base contract Y
contract Y {
    string public text;

    constructor(string  memory _text){
        text = _text;
    }
}


contract B is X ("Input to X") , Y("Input to Y"){

}


contract C is X , Y {

    constructor(string memory _name , string memory _text ) X(_name) Y(_text) {}

}


// 호출된 생성자 순서
// 1. X
// 2. Y
// 3. D
contract D is X , Y{
    constructor() X ("X was called") Y("Y was called"){}
}


// 호출된 생성자 순서
// 1. X
// 2. Y
// 3. E
contract E is X , Y{
    constructor() Y("Y was called") X("X was called") {}
}