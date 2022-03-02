pragma solidity ^0.8.10;


contract Error {

    function testRequire(uint _i) public pure {

        // 요구사항을 사용하여 다음과 같은 조건을 검증해야 합니다.
        // - 입력
        // - 실행 전 조건
        // - 호출에서 다른 함수로 값을 반환합니다.
        require(_i > 10 ,  "Input must be greater than 10");
    }


    function testRevert(uint _i) public pure {
        // Revert는 확인할 조건이 복잡할 때 유용합니다.
        // 위의 예와 정확히 같은 작업을 합니다.
        if (_i <= 10){
            revert("Input must be greater than 10");
        }
    }

}

uint public num;


function testAssert() public view {
    // 어설션(Asssert)은 내부 오류 테스트에만 사용 해야한다.
    // 불변성을 점검한다.

    // 항상 숫자를 0이라고 지정한다면 숫자는 변경하지 못하기 떄문에
    assert(num -- 0);
}


error InsufficenBalance(uint balance , uint withdrawAmount );

function test testCustomError(uint _withdrawAmont) public view {

    uint bal = address(this).balance;
    if (bal < _withdrawAmont){
        revert InsufficenBalance({balance : bal , withdrawAmount : _withdrawAmount});
    }
}