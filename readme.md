# Assignment 3 : Implementing Ethereum Tokens with Solidity

## Overview

The ERC20Token smart contract implements the ERC20 standard, enabling features like token transfers, approvals, minting, and burning.

## Key Features

1. **Token Metadata**:

   * Name: `MyToken`, Symbol:`MTK`, Decimals: `18`.
   * Total Supply: Set during deployment.

2. **Core Functionalities**: Supports token transfers, approvals, minting, and burning to adjust the total supply.
3. **Event Logging**: Emits `Transfer` and `Approval` events for transparency.

## Deployment and Testing on Remix IDE

1. **Deploy the Contract**:

   * Open Remix IDE and create a file named `ERC20Token.sol`.
   * Paste the contract code and compile it using version `^0.8.0` or higher.
   * Deploy the contract in the "Deploy & Run Transactions" tab, selecting: `JavaScript VM` for local testing or `Injected Web3` for MetaMask deployment.
   * Set `_initialSupply` (e.g., 1000) and deploy.

2. **Interact with the Contract**:

   * **View Details**: `Check name`, `symbol`, `decimals`, and `totalSupply`.
   * **Token Operations**:

        * `balanceOf(address)`: Check token balance.
        * `transfer(to, value)`: Transfer tokens.
        * `approve(spender, value)`: Approve token allowance.
        * `allowance(owner, spender)`: Check allowance.
        * `transferFrom(from, to, value)`: Transfer on behalf of another address.
        * `mint(value)`: Mint tokens to increase supply.
        * `burn(value)`: Burn tokens to reduce supply.
    
3. **Test Cases**:

   * **Insufficient Balance**: Attempt transfers exceeding balance.
   * **Allowance Exceeded**: Spend more than the approved allowance.
   * **Mint and Burn**: Verify changes in supply and balances.




   

