// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// โค้ดพื้นฐาน ERC-20 และ Ownable จาก OpenZeppelin
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.x/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.x/contracts/access/Ownable/Ownable.sol"; 

contract LuciferToken is ERC20, Ownable {
    
    uint256 public constant TOTAL_SUPPLY = 1000000 * 10**18; 
    
    constructor() ERC20("Lucifer Token", "LUC") {
        _mint(msg.sender, TOTAL_SUPPLY);
    }
    
    function burnOnCodeUse(uint256 amountToBurn) public onlyOwner {
        _burn(msg.sender, amountToBurn);
    }
}
