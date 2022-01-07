pragma solidity >= 0.8.1;

contract Visibilidad {
    uint public data2=100;
    uint internal billerera = 300;
    
    function x() public view returns(uint){
        uint data = 9;
        return data;
    }
    function y() public view returns(uint){
        return x();
    }
}