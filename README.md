# TokenTransfer Smart Contract

This is a basic ERC20 token smart contract implemented in Solidity. The contract includes the following functionalities:

1. **ERC20 Token Implementation**: The contract is based on the ERC20 standard, allowing users to transfer tokens and interact with the token contract.
2. **Ownable Contract**: The contract uses the `Ownable` pattern, ensuring that only the owner (deployer) can mint new tokens.
3. **Minting and Burning**: The contract allows the owner to mint new tokens to any address, and users can burn tokens from their own balance.
4. **Transfer Function Override**: The transfer function is overridden to ensure sufficient balance before performing the transfer.

## Contract Details

- **Name**: Cyfer
- **Symbol**: 202110320
- **Initial Supply**: 1000 tokens (minted to the contract deployer's address)

## Functions

### 1. `mint(address to, uint256 amount)`
- **Description**: Allows the owner to mint new tokens and send them to any specified address.
- **Access Control**: Only the owner can call this function.
- **Parameters**: 
  - `to`: The address to which the tokens will be minted.
  - `amount`: The number of tokens to mint.

### 2. `burn(uint256 amount)`
- **Description**: Allows any user to burn a specified amount of tokens from their own balance.
- **Access Control**: Any user can call this function, but it can only burn their own tokens.
- **Parameters**:
  - `amount`: The number of tokens to burn.

### 3. `transfer(address recipient, uint256 amount)`
- **Description**: Transfers tokens from the sender's address to the recipient's address, but ensures sufficient balance before transferring.
- **Access Control**: Any user can call this function to transfer tokens.
- **Parameters**:
  - `recipient`: The address to which the tokens will be transferred.
  - `amount`: The number of tokens to transfer.

## Example Usage

1. **Minting Tokens**:
   The owner can mint tokens by calling `mint()` and specifying the recipient address and the amount.

2. **Burning Tokens**:
   Any user can burn tokens from their own balance by calling `burn()` and specifying the amount to burn.

3. **Transferring Tokens**:
   Any user can transfer tokens to another address using the `transfer()` function.

## Deployment

1. Deploy this contract on any Ethereum-compatible blockchain network using Remix or any other Solidity IDE.
2. After deployment, the owner address will be able to mint tokens and interact with the contract.

## License

This contract is licensed under the MIT License.
