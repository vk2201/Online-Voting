//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

contract Election {

    struct candidate {
        uint id;
        string name;
        uint voteCount;
    }

    mapping(uint => candidate ) public candidates;
    uint public candidatesCount ;
    function addcandidate(string memory _name) private{

        candidatesCount++;
        candidates[candidatesCount] = candidate(candidatesCount,_name,0);
    }
    constructor(){
        addcandidate("candidate 1");
        addcandidate("candidate 2");
    }
}