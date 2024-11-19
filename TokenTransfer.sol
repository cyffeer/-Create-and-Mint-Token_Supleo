// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Importing ERC20 contract directly from GitHub
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

// Importing Ownable contract directly from GitHub
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract TokenTransfer is ERC20, Ownable {
    // Constructor to initialize the ERC20 token with name and symbolhttps://remix.ethereum.org/assets/img/aiLogoHead.webp
    constructor() ERC20("Cyfer", "202110320") Ownable(msg.sender) {
        // Mint initial tokens to the contract deployer
        _mint(msg.sender, 1000 * (10 ** decimals()));
    }

    // Function to mint tokens (only the owner can mint tokens)
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Function to burn tokens (any user can burn tokens from their own account)
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    // Overriding the transfer function to ensure sufficient balance before transfer
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        require(balanceOf(msg.sender) >= amount, "Transfer failed: insufficient balance");

        return super.transfer(recipient, amount);
    }
}

// owner:  0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
// spender:  0xabb944f2f3f5d24c54109f2f7e211b71b4445294
// receiver:  0x40580bcd69f0e17039dd5038bfb997a1ca0766db