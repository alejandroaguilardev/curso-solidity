pragma solidity >= 0.8.1;
// VIEW = retirna un valor
//PURE = retorna un calculo (no permite leer ni modificar el estado)
contract contrato {
    function getResult() public view returns(uint product, uint sum){
        uint a = 1;
        uint b = 2;
        product = a * b;
        sum = a + b;
    } 

    uint value;
    function getValue() external view returns(uint){
        return value;
    }

    function gerNewValue() external pure returns(uint){
        return 3+3;
    }

    function valuePlusThree() external view  returns(uint){
        return value + 3;
    }


}
