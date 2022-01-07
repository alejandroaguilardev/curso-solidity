pragma solidity >=0.8.1;

contract Operadores {
    function operacion () public view returns(uint){
        uint a = 3;
        uint b = 5;
        
        uint resultado = (a == 3 ? a : b);
        return resultado;
    }
}