pragma solidity >= 0.8.1;

contract Cadenas {
    string nombre ="Eric";
    string apellido = "Alvarez";

    function hola() public view returns(string memory){
        return nombre; 
    }

    function obtenerCaracteres() public view returns(uint){
        bytes memory stringToBytes = bytes(nombre);
        return stringToBytes.length;
    }
}