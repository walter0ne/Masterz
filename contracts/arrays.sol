// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

//Gli Array sono delle variabili di tipo 'reference', ovvero non archiviano direttamente i valori, ma fanno riferimento a variabili

// Gli Array possono essere di 2 tipi:
// - size fissa = la dimensione dell'array (elementi al suo interno) è fissa: uint[20] public arrFixed
// - size dinamica = la dimensione dell'array può variare durante l'esecuzione del codice: uint[] public arr

contract Array {
    uint[] public arr; //size dinamica
    uint[] public arr2 = [1,2,3]; //size dinamica ma con alcuni elementi già specificati
    uint[10] public myFixedSizeArray; //size fissa

    function returnArray(uint i) public view returns (uint) {
        return arr[i];
    }
    
    function getArray() public view returns  (uint [] memory) {
        return arr;
    }

    function pushArray(uint i) public {
        arr.push(i);
    }

    function popArray() public {
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint index) public {
        delete arr[index];
    }
}