// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract ifelse{

    function f1(uint x) public pure returns (uint){
        if(x > 5){
            return 1;
        } else{
            return 2;
        }
    }

//E' uguale alla funzione di sopra ma usando il ternario
    function f2(uint x) public pure returns(uint){
        return x > 5 ? 1 : 2;
    }
}