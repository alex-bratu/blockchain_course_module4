// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserPreferences {
    struct Preference {
        string favoriteColor;
        uint256 favoriteNumber;
    }

    mapping(address => Preference) public preferences;

    event PreferenceUpdated(address indexed user, string color, uint256 number);

    function updatePreference(string memory _color, uint256 _number) public {
        preferences[msg.sender] = Preference(_color, _number);
        emit PreferenceUpdated(msg.sender, _color, _number);
    }

    function getPreference(address _user) public view returns (string memory, uint256) {
        Preference memory pref = preferences[_user];
        if (bytes(pref.favoriteColor).length == 0) {
            revert("No preference set for this user");
        }
        return (pref.favoriteColor, pref.favoriteNumber);
    }
}