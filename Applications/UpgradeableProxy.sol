pragma solidity ^0.8.10;



contract Proxy {
    address public implementation;

    function setImplementation(address _imp) external {
        implementation = _imp;
    }
}