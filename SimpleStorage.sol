//SPDX-License-Identifier: MIT
pragma solidity ^0.18.0;

contract SimpleStorage {

    uint256 myFavouriteNumber; //0

    struct Person{
        uint256 favouriteNumber;
        string name;
    }

    //Person public pat = Person(FavouriteNumber = 17, name = 'jossie');
    Person[] public listOfpeople; // [] --dynamic array

    mapping (string => uint256) public nameToFavouriteNumber;

    function store(uint256 _favouriteNumber) public {
        myFavouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavouriteNumber;
    }

    function addPeople(string memory _name, uint256 _favouriteNumber) public {
        listOfpeople.push(Person(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}