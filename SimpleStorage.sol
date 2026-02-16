// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; // solidity versions

contract SimpleStorage {
    // favoriteNumber get initialized to 0 if no value is given

    uint256 public favoriteNumber; // 0

    // uint256() listoffavorNumber; 
    struct Person{uint256 favoriteNumber; string name;}

    // dynamic array
    Person[] public listofPeople; // []

    // femi => 200
   mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {favoriteNumber = _favoriteNumber;}

   // view, pure
    function retrieve() public view  returns(uint256) {return favoriteNumber;}

    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listofPeople.push( Person(_favoriteNumber, _name) ); 
        nameToFavoriteNumber[_name] = _favoriteNumber;
        }
}