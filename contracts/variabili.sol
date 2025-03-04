// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

  //VISIBILITA' DELLE VARIABILI:
  //public = è accessibile anche all'esterno del contratto
  //private = può essere utilizzata solo nel contesto del contratto
  //interna = come quella privata,ma può essere chiamata da contratti 'figlio'


  //TIPI DI VARIABILI:
  //state = variabili che vogliamo mantenere nel tempo e sono registrate su blockchain,vengono scritto dentro il contratto,fuori da funzioni
  //local = variabili che esistono all'interno di una funzione e 'muoiono' al termine dell'esecuzione della funzione
  //global = variabili 'speciali' definite dalla blockchain, come il timestamp del blocco

  //E' possibile specificare il tipo di salvataggio del dato che può essere:
  //storage = salvataggio dati su blockchain
  //memory = salvataggio di dati temporaneo, non su blockchain, per cui non permanente
  //calldata = come memory, ma i dati non sono modificabili
  //E' importante specificare il tipo di salvataggio, perchè eseguire una gunzione ha un costo (gas fee) e la scelta del modo in cui salvare i dati è importante perchè influenza le gas fees
  //Lo Storage costa di più del Memory che a sua volta costa di più del Calldata:  Storage > Memory > Calldata

  //le seguenti sono tutte variabili 'state'
contract variabili {
  uint public numero = 10; //quando non viene specificato uint è uguale a uint256
  int public numero2 = -20;
  int private numero3 = -20; //quando è private non è visibile nei contratti deployati
  bool public accetta = true; // se non è assegnato, di default è 'false'
  string public saluto = "Ciao a tutti"; 
  
  address public addr = 0xb9EDE6f94D192073D8eaF85f8db677133d483249;
  address public addr0 = address(0);
}