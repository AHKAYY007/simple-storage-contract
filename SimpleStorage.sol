// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //stating version

contract SimpleStorage {
     uint256 public myFavoriteNumber; // 0

     //uint256[] listOfFavouriteNumbers; 
     // [0, 78, 90]

     struct Person{
      uint256 favoriteNumber;
      string name;
     }

   //   Person public pat = Person({favoriteNumber: 7, name: "pat"});
   //   Person public mary = Person({favoriteNumber: 7, name: "mary"});
   //   Person public john = Person({favoriteNumber: 7, name: "john"});

   Person[] public listOfPeople; //dynamic array
   //Person[3] public listOfPeople; static array

   mapping(string => uint256) public nameToFavouriteNumber;

     function store(uint _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
      
     }

     function retrieve() public view returns(uint256){
      return myFavoriteNumber;
     }

     function addPerson(string memory _name, uint256 _favouriteNumber) public{
        listOfPeople.push(Person(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber; 
        // allows you to access a users favourite number whenever the name is searched
     }

  
}