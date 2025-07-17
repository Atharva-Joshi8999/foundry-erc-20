// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {OurToken} from "../src/Token.sol";


contract DeployOurToken is Script {
    uint256 public constant INITIAL_SUPPLY = 100 ether;

    function run() external returns (OurToken) {
        vm.startBroadcast();
        OurToken oa = new OurToken(INITIAL_SUPPLY);
        vm.stopBroadcast();
        return oa;
    }
}
