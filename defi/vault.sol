pragma solidity ^0.8.13;



contract Vault {


    IERC20 public immutable token;

    uint public totalSupply;
    mapping (address => uint) public balanceOf;



    constructor(address _token) {
        token = IERC20(_token);
    }

    function _mint(address _to, uint _shares) private {
        totalSupply += _shares;
        balanceOf[_to] += _shares;
    }   
}