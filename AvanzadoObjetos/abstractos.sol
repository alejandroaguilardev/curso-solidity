pragma solidity >=0.8.1;

abstract contract X{
    // la funcion debe tener virtual es el equivalente a abstrac
    function y() public view virtual returns(string memory);
}

contract Y is X {
    // override sobreescribe
    function y() public override view returns(string memory){
        return 'hola';
    }
}