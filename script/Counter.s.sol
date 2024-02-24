// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    Counter counter; 
    function setUp() public {}

    function run() public {
        uint256 deployerPrivatekey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivatekey);
        counter = new Counter();
        vm.stopBroadcast();
    }
}
