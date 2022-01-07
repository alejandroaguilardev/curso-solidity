pragma solidity >=0.8.1;

// Se utiliza cuando se ejecut 2 veces el contrato y aun no ha terminado de ejecutar el primnero
contract FunctionOverLoading {

    // function x(uint lightSwitch, uint wallet) public {

    // }

    // function x(uint wallet) public {

    // }

    function getSum(uint a, uint b) public pure returns(uint){
        return a+ b;
    }

    function getSum(uint a, uint b, uint c) public pure returns(uint){
        return a+b+c;
    }
    function getSumTwoArgs() public pure returns(uint){
        return getSum(2,3);
    }
}