pragma solidity >= 0.8.1;

contract A{
    uint innerVal = 100;

    function innerAddTen(uint val) public pure returns (uint) {
        return val +10;
    }
}

contract B is A {
    function outeAddTen(uint val) public pure returns(uint) {
        return A.innerAddTen(val);
    }

    function getInnerVal(uint val) public view returns (uint) {
        return A.innerVal;
    }
}


 