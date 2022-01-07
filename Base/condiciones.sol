pragma solidity >=0.8.1;

contract Conditional {
    uint billetera = 300;

    function validarAmount() public view returns(bool){
        if(billetera == 300  ){
            return true;
        }else {
            return false;
        }
    }
}