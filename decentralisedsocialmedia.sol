// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract DecentralizedSocialMedia {

    string public projectTitle;
    string public projectDescription;

    // Event to emit when title and description are updated
    event ProjectUpdated(string title, string description);

    constructor() {
        projectTitle = "Decentralized Social Media";
        projectDescription = "Build a platform that is fully decentralized, allowing users to control their own data.";
    }

    // Function to update project title and description
    function updateProjectDetails(string memory _title, string memory _description) public {
        projectTitle = _title;
        projectDescription = _description;
        emit ProjectUpdated(_title, _description);
    }

    // Function to get project details
    function getProjectDetails() public view returns (string memory, string memory) {
        return (projectTitle, projectDescription);
    }
}

