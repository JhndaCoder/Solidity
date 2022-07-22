// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

contract SimpleStorage{

    People public person = People({favNumber : 2, name: "Amit"});

    mapping(string => uint256) public nameToFavNumber;
    struct People{
        uint256 favNumber;
        string name;
    }

    uint256[] favNumberList;
    People[] public people;

    uint256 public favouriteNumber;
    function store(uint256 _favNumber) public virtual{
        favouriteNumber = _favNumber;
    }

    function retrieve() public view returns(uint256){
        return favouriteNumber;
    }

    function add() public pure returns(uint256){
        return 1+1 ;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public{
        people.push(People(_favouriteNumber, _name));
        nameToFavNumber[_name] = _favouriteNumber;
    }

}