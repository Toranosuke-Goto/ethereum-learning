// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

improt "forge-std/Script.sol";
import "../src/Greeter.sol";

contract DeployGreeter is Script {
	function run() ecternal {
		// 1. Start recording the transaction to be sent to the blockchain
		vm.startBroadcast();

		// 2. Instantiate and deploy the contract
		new Greeter();

		// 3. Stop recroding transactions
		vm.stopBrodcast();
	}
}
