// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

//I STRUCTS servono per associare un valore con un altro che non sia dello stesso tipo

contract Todos{
    struct Todo {
        string text;
        bool completed;
    }
    //Array
    Todo[] public todos;

    function create(string memory _text) public {  //memory = significa che una variabile non sarà registrate su blockchain, ma è temporanea
        todos.push(Todo(_text, false));
        //todos.push(Todo({text: _text, completed: false}));  Altro metodo di sintassi più chiara
    }

    //aggiorna testo
    function update(uint _index, string memory _text) public {
        Todo storage todo = todos[_index];   //storage = salva i dati su blockchain
        todo.text = _text;
    }

    //conferma termine attività
    function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}
