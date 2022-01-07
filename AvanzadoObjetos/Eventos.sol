pragma solidity >= 0.8.1;

contract eventos{

    event NewTrade(
        uint indexed date,
        address from,
        address indexed to,
        uint indexed amount
    );

    function trade(address to, uint amount) external {
        //proigramas externos puedne leer este contrato a traves de web.js
        emit NewTrade(block.timestamp,msg.sender, to, amount);
    }
}