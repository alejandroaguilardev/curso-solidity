pragma solidity >= 0.8.1;

contract RestrictedAccess{

    address public owner = msg.sender;
    uint public creationTime = block.timestamp;

    modifier onlyBy(address _account) {
        require(msg.sender == _account,
        'Sender no authorized');
        _;
    }

    modifier onlyAfter(uint _time) {
        require(block.timestamp >= _time,
        'function is called too early');
    }

    //escribir funcion que cambiara la direccion del dueño
    function changeOwnerAddress(address _newAddress) onlyBy(owner) public {
        owner = _newAddress;
    }

    // escribe una function para eliminar el dueño
    function disown () onlyBy(owner) onlyBy(creationTime + 5 weeks) public {
       delete owner;
    }

     // escribe una function para eliminar el dueño
    function disown () onlyBy(owner) onlyBy(creationTime + 5 weeks) public {
       delete owner;
    }

    modifier costs(uint _amount) {
        require(msg.value >= amount,
        'Not enough Ether Provided');
        _;
    }

    function forceChangeOwner(address _newOwner) payable costs(100 ether){
        owner = _newOwner;
    } 

}