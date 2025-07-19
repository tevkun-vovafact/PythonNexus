pragma solidity ^0.8.0;

contract NexusContract {
    mapping(address => uint256) public dataStore;

    function storeData(uint256 value) public {
        dataStore[msg.sender] = value;
    }

    function retrieveData(address user) public view returns (uint256) {
        return dataStore[user];
    }
}
