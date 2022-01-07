pragma solidity >= 0.8.1;

contract coin {
    address public  minter;
    mapping (address => uint) public balances;

    event Sent(address from, address to, uint amount);

    constructor() {
        minter = msg.sender;
    }

    //enviar cantidad de moneda creada a la direccion especifica
    
    function mint (address receiver, uint amount) public {
        require(msg.sender == minter);
        balances[receiver] +=amount;
    }

    error InsuficcientBalance(uint requested, uint available);

    // funcion envia moneda existente

    function send(address receiver, uint amount) public {
        if(amount > balances[msg.sender])
            revert InsuficcientBalance({
                requested:amount,
                available: balances[msg.sender]
            });
        
        balances[msg.sender]-=amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
}