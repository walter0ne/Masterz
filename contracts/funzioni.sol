// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

//TIPI DI FUNZIONI:
//Funzioni che modificano lo stato della blockchain
//Funzioni che leggono lo stato della blockchain e possono essere suddivise in:
// - View: non modificano lo stato della blockchain;
// - Pure: non modificano e non leggono lo stato della blockchain 

contract funzioni {
    //dichiariamo delle variabili di tipo 'State'
    uint public numero = 0;

    //funzione per modificare i dati su blockchain
    function aggiorna(uint num) public{
        numero = num;
    }

    //funzione per leggere il dato su blockchain
    function leggi() public view returns(uint){
        return numero;
    }

    //funzione che non legge e non modifica su blockchain
    function somma(uint x , uint y) public pure returns(uint){
        return x + y;
    }
}