pragma solidity ^0.4.18;

contract mortal {
    /* Define variable owner of the type address */
    address owner;

    /* This function is executed at initialization and sets the owner of the contract */
    function mortal() { owner = msg.sender; }

    /* Function to recover the funds on the contract */
    function kill() { if (msg.sender == owner) selfdestruct(owner); }
}

contract contacts is mortal {
    
    bytes32[] public appointments = [bytes32('asdf'), bytes32('asdf'), bytes32('asdf')];

    /* Save function */
    function setContacts(bytes32 _one, bytes32 _two, bytes32 _three) public returns (bool success) {
        appointments[0] = _one;
        appointments[1] = _two;
        appointments[2] = _three;
        return true;
    }

    /* Retrieve function */
    function getContacts() constant returns (bytes32, bytes32, bytes32) {
        return (appointments[0], appointments[1], appointments[2]);
    }
}