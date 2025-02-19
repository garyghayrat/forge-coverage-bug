// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(false, 0);
    }

    function testFuzz_SetNumber(bool _revert, uint256 x) public {
        counter.setNumber(_revert, x);
        assertEq(counter.number(), x);
    }
}
