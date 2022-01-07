pragma solidity >= 0.8.1;

contract Ciclos{
        uint  [] listaLarga = [1,2,3,4,5,6,7,8];
        uint  [] listaNumber = [1,2,3,4,34,56];
    function whileFunc() public view returns(uint){
        uint a = 2;
        // while(a<5){
        //     a++;
        //     return a;
        // }
        do{
            return a;
        }while(a<5);
    }

    function forFunc(uint numero) public view returns (bool){
        bool number = false;

        for(uint i =0; i < listaNumber.length;i++){
            if(listaNumber[i]==numero){
                number=true;
            }
            return number;
        }
    }
}