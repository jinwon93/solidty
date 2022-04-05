pragma solidity ^0.8.10;



// addr.call(abi.encodeWithSignature("transfer(address,uint256)", 0xSomeAddress, 123))


contract FunctionSelector {


    function getSelector(string calldata _func) external pure returns (bytes4) {
         /*
        "transfer(address,uint256)"
        0xa9059cbb
        "transferFrom(address,address,uint256)"
        0x23b872dd
        */
        return bytes4(keccak256(bytes(_func)));
    }
}