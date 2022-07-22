// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {
    // +5
    // Overriding the function

    // virtual and override

    function store(uint256 _favNumber) public override{
        favouriteNumber = _favNumber + 5;
    }


}