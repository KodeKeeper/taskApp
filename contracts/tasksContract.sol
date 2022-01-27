pragma solidity ^0.8.6;

contract tasksContract {

uint public taskCounter = 0;

struct Task {
    uint256 id;
    string title;
    string description;
    bool done;
    uint256 createtask;
}
mapping (uint256 => Task) public tasks;

constructor() {
    createTask("00000000", "Tarea Genesis");
}

function createTask(string memory _title, string memory _description) public {
    tasks[taskCounter] = Task(taskCounter, _title, _description, false, block.timestamp);
    taskCounter++;
}

function toggleDone (uint _id) public {
    Task memory _task = tasks[_id];
    _task.done = !_task.done;
    tasks[_id] = _task;
}


}