// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

//I MODIFIERS sono delle funzioni speciali che servono per alterare il funzionamemtno di una funziona
contract modifiers {    //i modifier si usano principalmente per verificare che chi sta inviandol'NFT è effettivamente il proprietario di quell'NFT
    uint public z = 0;

    modifier valueMax(uint x){
        require(x < 10, "x maggiore di 10");
        _; //chiusura del modifier che mi permette di continuare ad eseguire il codice
    }

    modifier aggiungi2(){
        z += 1;
        _;
        z += 1;
    }

    function calc(uint y) external valueMax(y){
        z += y;
    }

    function calc2(uint y) external aggiungi2(){
        z += y;
    }
}