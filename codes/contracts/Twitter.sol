// SDPA-License-Identifier: MIT

pragma solidity ^0.8.21;

// 1, Create a Twitter contract
// 2. Create a mapping btwn user and tweet
// 3. Add a function to creata a tweet and save it in mapping
// 4. Create a function to get Tweet

contract Twitter {
    mapping(address => string[]) public tweets;

    function createTweet(string memory _tweet) public {
        tweets[msg.sender].push(_tweet);
    }

    function getTweet(
        address _owner,
        uint _i
    ) public view returns (string memory) {
        return tweets[_owner][_i];
    }

    function getAllTweets(
        address _owner
    ) public view returns (string[] memory) {
        return tweets[_owner];
    }
}
