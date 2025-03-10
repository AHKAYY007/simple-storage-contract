// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

SimpleStorage[] public listOfSimpleStorageContract;


function createSimpleStorageContract() public { 
      SimpleStorage newSimpleStorageContract = new SimpleStorage();
      listOfSimpleStorageContract.push(newSimpleStorageContract);
}
   
   function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        SimpleStorage mySimpleStorage = listOfSimpleStorageContract[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
   }
}