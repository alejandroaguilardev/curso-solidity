pragma solidity >= 0.8.1;


contract FallBack {
    event Log(uint gas);
    fallback () external payable {
        emit Log(gasleft()); // retorna el gas que queda
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}

contract SendToFallBack {
    function transferToFallBack(address payable _to) public payable {
        //enviar ether con metodo transfer
        _to.transfer(msg.value);
    }

    function callFallBack(address payable _to) public payable {
    //enviar Ether al metodo fallback
    (bool sent,) = _to.call{value:msg.value}('');
        require(sent, 'Failed to send!');
    }
}
