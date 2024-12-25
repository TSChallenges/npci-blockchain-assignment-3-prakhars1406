// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ERC20Token {
    string public name = "MyToken";
    string public symbol = "MTK";
    uint8 public decimals = 18;
    uint256 public totalSupply;

    mapping(address => uint256) private balances;
    mapping(address => mapping(address => uint256)) private allowances;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    constructor(uint256 _initialSupply) {
        // TODO: Initialize totalSupply and assign it to the deployer's balance.
        // HINT: Use `_initialSupply` and the `decimals` variable.
    }

    function balanceOf(address account) public view returns (uint256) {
        // TODO: Return the balance of the given `account`.
        // HINT: Use the `balances` mapping.
    }

    function transfer(address to, uint256 value) public returns (bool) {
        require(balances[msg.sender] >= value, "Insufficient balance");
        // TODO: Implement the transfer logic.
        // HINT: Deduct `value` from sender's balance and add it to the recipient's balance.
        emit Transfer(msg.sender, to, value);
        return true;
    }

    function approve(address spender, uint256 value) public returns (bool) {
        // TODO: Set the allowance for `spender` to spend `value` on behalf of the caller.
        emit Approval(msg.sender, spender, value);
        return true;
    }

    function allowance(address owner, address spender) public view returns (uint256) {
        // TODO: Return the allowance set by `owner` for `spender`.
    }

    function transferFrom(address from, address to, uint256 value) public returns (bool) {
        require(balances[from] >= value, "Insufficient balance");
        require(allowances[from][msg.sender] >= value, "Allowance exceeded");
        // TODO: Implement the logic for transferring tokens on behalf of another address.
        // HINT: Update the `balances` and `allowances` mappings.
        allowances[from][msg.sender] -= value;
        emit Transfer(from, to, value);
        return true;
    }

    function mint(uint256 value) public {
        // TODO: Increase `totalSupply` by `value` and add `value` to the caller's balance.
        emit Transfer(address(0), msg.sender, value);
    }

    function burn(uint256 value) public {
        require(balances[msg.sender] >= value, "Insufficient balance");
        // TODO: Decrease `totalSupply` by `value` and subtract `value` from the caller's balance.
        emit Transfer(msg.sender, address(0), value);
    }
}
