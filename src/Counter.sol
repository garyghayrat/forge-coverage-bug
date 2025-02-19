// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./Reverter.sol";

contract Counter {
    uint256 public number;
    Reverter reverter;

    function setNumber(bool _revert, uint256 _newNumber) public {
        reverter = new Reverter();
        try reverter.shouldRevert(_revert) {
            number = _newNumber; // Uncommenting this line decreases statements coverage
        } catch {
            number = _newNumber; // Uncommenting this line decreases statements coverage
        }
        number = _newNumber;
    }
}
