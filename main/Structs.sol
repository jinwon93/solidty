pragma solidity ^0.8.10;



import "./StructDeclaration.sol";
// contract Todos {

//     struct Todo{
//         string text;
//         bool completed;
//     }
// }



Todo[] public todos;


function create(String memory _text) public {

    //구조를 초기화하는 3가지 방법
    todos.push(Todo(_text , false));

    // key value mapping
    todos.push(Todo(test: _text , completed : false));

    //빈 구조를 초기화한 다음 업데이트
    Todo memory todo;
    // false로 초기화
    todo.text = _text;

    todos.push(todo);
}



function get(uint _index)  public view returns (String memory text , bool completed){
    Todo storage todo =  todos[_index];
    return (todo.text , todo.completed);
}


function update(uint _index , string memory _text) public{
    Todo storage todo = todos[_index];
    todo.text = _text;
}


function toggleCompleted(uint _index) public {

    Todo storage todo = todos[_index];
    todo.completed  = !todo.completed;
}
]