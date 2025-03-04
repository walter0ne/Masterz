// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract loops{
    function for_loop() public pure{
        for (uint i = 0; i < 5; i++){
            if(i == 3){
                continue;
            }
            if(i == 4){
                break;
            }
        }
    }
}