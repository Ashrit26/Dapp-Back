pragma solidity >=0.4.20;

contract Tasks {
    // Model a Candidate
    struct Task {
        uint id;
        string name;
        string description;
        string time;
        string deadline;
    }

    // Store accounts that have voted
    mapping(address => bool) public voters;
    // Store Candidates
    // Fetch Candidate
    mapping(uint => Task) public tasks;
    // Store Candidates Count
    uint public tasksCount;

    // voted event
    event votedEvent (
        uint indexed _candidateId
    );

    constructor() public{
        addTask("UI Design","Design robust and beautful UI for the application","50", "27th April 2020");
        addTask("Tasks Implementation","Implement taks feature for the app","60", "10th May 2020");
    }

    function addTask (string memory _name, string memory _description, string memory _time, string memory _deadline) private{
        tasksCount ++;
        tasks[tasksCount] = Task(tasksCount, _name, _description, _time, _deadline);
    }

}

