// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.0;

/// @title Greeter
contract Greeter {
    string public greeting;
    address public owner;

    // CUSTOMS
    error BadGm();

    event GMEverybodyGM();

    constructor(string memory newGreeting) {
        greeting = newGreeting;
        owner = msg.sender;
    }

    function gm(string memory myGm) external returns (string memory greet) {
        if (keccak256(abi.encodePacked((myGm))) != keccak256(abi.encodePacked((greet = greeting)))) revert BadGm();
        emit GMEverybodyGM();
        for (uint256 i = 0; i < 200; i++) {
            emit GMEverybodyGM();
        }
    }

    function setGreeting(string memory newGreeting) external {
        greeting = newGreeting;
    }
}
