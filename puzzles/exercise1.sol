// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserPreferences {
    // Define a struct for user preferences
    struct Preference {
        string favoriteColor;
        uint256 favoriteNumber;
    }

    // Mapping to store preferences by user address
    mapping(address => Preference) public preferences;

    // Event to log changes
    event PreferenceUpdated(address indexed user, string color, uint256 number);

    // Function to add or update a preference
    function updatePreference(string memory _color, uint256 _number) public {
        // TODO: Implement the logic to update the mapping and emit the event
    }

    // Function to retrieve a preference
    function getPreference(address _user) public view returns (string memory, uint256) {
        // TODO: Return the favoriteColor and favoriteNumber for the given user
        // Handle case if no preference exists (e.g., return defaults or revert)
    }
}