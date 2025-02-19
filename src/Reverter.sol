// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Reverter {
    function shouldRevert(bool _revert) public pure {
        if (_revert) {
            revert("Reverted");
        }
    }
}
