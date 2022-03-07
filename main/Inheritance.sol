pragma solidity ^0.8.10;


/* 상속 
    A
   / \
  B   C
 / \ /
F  D,E

*/

contract A {

    function foo() public pure virtual  returns (string  memory) {
        return "A";
    }
}

contract B is A {

    // Overrude A.foo()
    function foo() public pure virtual override returns (string memory){
        return "B";
    }
}


contract C is A {
    // Override A.foo();
    function foo() public pure virtual override returns (string memory){
        return "C";
    }

}



contract D is B , C{
    // D.foo() returns C
    // since C  상위계약 
    function foo(); public pure override(B , C) returns (string memory){
        return super.foo();
    }
}


contract E is C , B{
    // E.foo() returns B
    // since B  상위계약 
    function foo() public pure override(C , B)  returns (string memory){
        return super.foo();
    }
}


contract F is A , B {
    //if 주의 : A와 B의 순서를 바꾸면 오류가 발생한다 
    function foo() public pure override(A , B) returns (string memory){
        return super.foo();
    }
}