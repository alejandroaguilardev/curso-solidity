pragma solidity ^ 0.8.1;

contract aprendeAssembly {
    function  agregarEVM() external {
        uint x;
        uint y;

        assembly {
            // := es igual a =
            let z := add(x,y)
        }
    }

    function agregarEVM2() public view returns(bool success){
        uint size;
        address addr;
        assembly {
            size:= extcodesize(addr) // metodo de solidity para ver el tamaño
        }
        
        return size<=0 ? true : false;
    }

    function agregarEVM3() external pure{
        bytes memory data = new bytes(10);
        bytes32 dataB32;

        assembly {
            dataB32 := mload(add(data,32))
        }
    }
}