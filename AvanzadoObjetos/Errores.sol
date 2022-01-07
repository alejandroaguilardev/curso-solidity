pragma solidity ^0.8.1;

contract Errores{
    bool public sunny = true;
    bool public umbrella = false;
    uint finalCalc = 0;

    function solarCalc() public {
        require (sunny, 'It is nor sunny today!');
        finalCalc +=3;
        assert(finalCalc != 6);
    }

    function weatherChager() public {
        sunny = !sunny;
    }

    function getCalc() public view returns(uint) {
        return finalCalc;
    }

    function bringUmbrella() public {
        if(!sunny){
            umbrella  =true;
        }else {
           revert('No need to bring umbrella today!');
        }
    }
}


contract Vendedor {
    address seller;

    modifier onlySeller() {
        require(msg.sender == seller,
        'Only the seller can sell this!');
        _;
    }

    function becomeSeller() public {
        seller = msg.sender;
    } 

    function sell(uint amount) payable public onlySeller {
        if(amount > msg.value) {
            revert('There is not enough ether provided');
        }
    }
}