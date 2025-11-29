// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LuciferToken is ERC20, Ownable {
    uint256 public constant TOTAL_SUPPLY = 1000000 * 10**18; 

    constructor() ERC20("Lucifer Token", "LUC") Ownable(msg.sender) {
        // Minting the total supply to the deployer (owner)
        _mint(msg.sender, TOTAL_SUPPLY);
    }

    // Function to burn tokens on code use, accessible only by the contract owner
    function burnOnCodeUse(uint256 amountToBurn) public onlyMe {
        _burn(msg.sender, amountToBurn);
    }
}