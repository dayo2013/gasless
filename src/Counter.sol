// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import {ERC2771Context} from "openzeppelin-contracts/contracts/metatx/ERC2771Context.sol";

contract Counter is ERC2771Context {
    uint256 public number;
    address public lastAddr;
    address public _trustedForwarder;


    constructor(address _t)ERC2771Context(_t) {
        _trustedForwarder= _t;
    }

    function setNumber(uint256 newNumber) public {
        number = newNumber;
        lastAddr = msg.sender;
    }

    function increment() public {
        number++;
        lastAddr = msg.sender;
    }
    function decrement() public {
        number--;
        lastAddr = msg.sender;

}
function getNumber() public view returns (address) {
    return lastAddr;
}
}

//forge script script/Counter.s.sol:CounterScript --rpc-url $GOERLI_RPC_URL --broadcast --verify  -vvvv 

// 0x022bF60164616429b43B3Dd5D80583EC789856F7 deploy
//forge script script/Counter.s.sol:CounterScript --rpc-url $GOERLI_RPC_URL --broadcast -vvvv