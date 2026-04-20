// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol"; // Foundry's standard test library
import "../src/Greeter.sol";  // Loading the test target

contract GreeterTest is Test {
    Greeter greeter;

    // 「beforeEach」や「deploy」
    function setUp() public {
        greeter = new Greeter();
    }

    // 「it("has been deployed successfully")」
    function test_HasBeenDeployedSuccessfully() public {
        assertTrue(address(greeter) != address(0), "Contract was not deployed");
    }
}
