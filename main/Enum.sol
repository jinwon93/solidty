pragma solidity ^0.8.10;


import "./EnumDeclaration.sol";


contract Enum{

    Status public status;
}
// contract Enum{

//     enum status {
//         Pending, 
//         Shipped, 
//         Accepted, 
//         Rejected,
//         Canceld
//     }
// }


// 보류
Status public status;



// Returns uint
    // Pending  - 0 // 보류
    // Shipped  - 1 // 배송
    // Accepted - 2 // 승인
    // Rejected - 3 // 거부
    // Canceled - 4 // 취소
function get() public view returns (Status){
    return status;
}


function set(Status _status) public {
    status = _status;
}


function cancel() public {
    status = Status.Canceld;
}

public reset() public {
    delete status;
}