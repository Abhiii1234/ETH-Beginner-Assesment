# ETH PROOF: Beginner EVM Course

This Solidity program is a simple "Create a token" program that demonstrates the basic syntax and functionality of the Solidity programming language. This contract is a simple implementation of a custom token called ABHIToken. It allows minting new tokens, burning existing tokens, and tracking balances of token holders.

## Description

### ABHIToken

ABHIToken is a custom ERC20-compatible token contract implemented in Solidity. It represents a token called "ABHIToken" with the abbreviation "ATK". The contract allows token minting and burning, and provides functionality to track token balances for different addresses.

#### Public Variables

- `tokenName`: A public string variable representing the name of the token.
- `tokenAbbrv`: A public string variable representing the abbreviation or symbol of the token.
- `totalUserSupply`: A public uint variable representing the total supply of the token.

#### Mapping Variable

- `userBalances`: A mapping variable that associates addresses with their corresponding token balances. It allows users to query token balances for specific addresses.

#### Functions

- `mint`: A function that mints new tokens and assigns them to a specified address. The total supply and the balance of the given address are increased by the minted amount.
- `burn`: A function that burns (destroys) a specified amount of tokens owned by a given address. If the address has a sufficient balance, the total supply and the balance of the address are reduced by the burned amount.

This contract can be used as a starting point for creating and managing custom tokens on the Ethereum blockchain. It provides the basic functionality required for token issuance, transfers, and balance tracking. Feel free to use and modify this contract as needed for your own token projects.

## Getting Started

### Executing Program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at [https://remix.ethereum.org/](https://remix.ethereum.org/).

Once you are on the Remix website, create a new file by clicking on the left-hand sidebar. Save the file with a `.sol` extension (e.g., `MyToken.sol`). Copy and paste the following code into the file:

```solidity

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    // Public variables to store the details about the coin
    string public tokenName = "ABHIToken";
    string public tokenAbbrv = "ATK";
    uint256 public totalUserSupply;

    // Mapping to store user balances
    mapping(address => uint256) public userBalances;

    // Mint function to increase total user supply and balance of a specified address
    function mint(address _to, uint256 _amount) public {
        // Ensure a reasonable amount is minted
        if (_amount > 0 && _amount <= 10000) {
            totalUserSupply += _amount;
            userBalances[_to] += _amount;
        }
    }

    // Burn function to decrease total user supply and balance of a specified address
    function burn(address _from, uint256 _amount) public {
        // Conditional to check if the balance is sufficient to burn
        if (_amount > 0 && userBalances[_from] >= _amount) {
            totalUserSupply -= _amount;
            userBalances[_from] -= _amount;
        }
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to 0.8.18 or higher, and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the following functions: `mint` function, `burn` function and also can check variables values like `userBalances`, `tokenName`, `tokenAbbrv`, `totalUserSupply`. To track token balances of addresses or perform token minting and burning, you have to write or copy-paste the sender's account address.


## Authors

Abhigyan Pushkar

## License

This project is licensed under the MIT License - see the LICENSE.md file for details

---
