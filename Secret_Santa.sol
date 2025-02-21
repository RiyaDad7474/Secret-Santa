pragma solidity ^0.8.0;

contract SecretSanta {
    // List of participants
    address[] public participants;
    
    // Mapping to track if an address has joined
    mapping(address => bool) public hasJoined;
    
    // Boolean to track if the exchange is completed
    bool public exchangeCompleted;

    // Function to join the exchange
    function joinExchange() public {
        require(!hasJoined[msg.sender], "Already joined.");
        hasJoined[msg.sender] = true;
        participants.push(msg.sender);
    }

    // Function to mark the exchange as completed
    function completeExchange() public {
        require(!exchangeCompleted, "Exchange already completed.");
        exchangeCompleted = true;
    }
}
