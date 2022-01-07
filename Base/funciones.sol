pragma solidity >= 0.8.1;

contract Funciones {
    uint a = 50 //variable global
    function sumaValores() public view returns (uint) {
        uint a = 3;
        uint b = 5;
        uint result = a + b;
        return result;
    }
}