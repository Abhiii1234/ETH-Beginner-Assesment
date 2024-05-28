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
