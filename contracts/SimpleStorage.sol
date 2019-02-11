
pragma solidity ^0.5.0;

contract SimpleStorage {
    mapping(address => uint256) public favoriteNumbers;

    function setFavorite(uint x) public {
        favoriteNumbers[msg.sender] = x;
    }

    function getFavorite() public view returns (uint256) {
        return favoriteNumbers[msg.sender];
    }
}