// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {
    //null value = initialised to 0
    uint256 public favNum;

    struct People {
        uint256 favNum;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavNum;

    function store (uint256 _favNum) public {
        favNum = _favNum;
    }

    function retrieve() public view returns(uint256){
        return favNum;
    }

    function addPerson(string memory _name, uint256 _favNum) public {
        people.push(People(_favNum, _name));
        nameToFavNum[_name] = _favNum;
    }
    

}
