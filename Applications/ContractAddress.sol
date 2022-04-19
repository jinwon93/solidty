pragma solidity ^0.8.10;




contract Factory {
    // Returns the address of the newly deployed contract
    function deploy(
        address _owner,
        uint _foo,
        bytes32 _salt
    ) public payable returns (address) {
        // This syntax is a newer way to invoke create2 without assembly, you just need to pass salt
        // https://docs.soliditylang.org/en/latest/control-structures.html#salted-contract-creations-create2
        return address(new TestContract{salt: _salt}(_owner, _foo));
    }


}


contract FactoryAssembly {
        event Deployed(address addr, uint salt);

        // 1. Get bytecode of contract to be deployed
        // NOTE: _owner and _foo are arguments of the TestContract's constructor
        function getBytecode(address _owner, uint _foo) public pure returns (bytes memory) {
            bytes memory bytecode = type(TestContract).creationCode;

            return abi.encodePacked(bytecode, abi.encode(_owner, _foo));
        }

        // 2. Compute the address of the contract to be deployed
        // NOTE: _salt is a random number used to create an address
        function getAddress(bytes memory bytecode, uint _salt)
            public
            view
            returns (address)
        {
            bytes32 hash = keccak256(
                abi.encodePacked(bytes1(0xff), address(this), _salt, keccak256(bytecode))
            );

            // NOTE: cast last 20 bytes of hash to address
            return address(uint160(uint(hash)));
        }
    }