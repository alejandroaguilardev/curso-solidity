pragma solidity >= 0.8.1;
// palabras reservadas

contract especiales {
    mapping(address => uint) balance;

    function updateBalance(uint newBalance) public {
        balance[msg.sender] = newBalance;
    }
}