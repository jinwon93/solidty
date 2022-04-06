pragma solidity ^0.8.10;


// Calling Parent Contracts 
// 상위 계약은 직접 호출하거나 super를 사용하여 호출 
// super 사용하면 직계존속 계약이 모두 호출
/* Inheritance tree
   A
 /  \
B   C
 \ /
  D
*/



contract A {

    // event 트랜잭션 로그에 기록된다
    event Log(string message);

    function foo() public virtual{
        emit Log("A.foo called");
    }

    function bar() public virtual {
        emit Log("A.foo called");
    }
}


contract B is A {

    function foo()  public virtual override {

        emit Log("B.foo called");
        A.foo();
    }

    function bar() public virtual override {
        emit Log("B.bar called");
        super.bar();
    }
}


contract C is A {

    function foo()  public virtual override{
        emit Log("C.foo called");
        A.foo();
    }

    function bar() public virtual override{

        emit Log("C.bar called");
        super.bar();
    }

}

contract D is B , C {
    //- D.foo 트랜잭션 로그를 확인합니다.
    // D는 A , B , C를 상속받았지만 C와 A만 호출
    // - D.bar  트랜잭션 로그 확인
    // D는 C를 호출했고 그다음은 B  마지막으로 A를 호출
    // SUPER는 B와 C에 의해 두번 호출 되었지만 A는 한번만 호출
    function foo()  public override(B , C){
        super.foo();
    }

    function bar() public override(B , C) {
        super.bar();
    }
}
