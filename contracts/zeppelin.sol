// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts@5.0.2/token/ERC20/ERC20.sol";

contract GLDToken is ERC20 {
    // Recibe la cantidad inicial en monedas enteras.
    constructor(uint256 initialSupply) ERC20("Gold", "GLD") {
        _mint(msg.sender, initialSupply * 10 ** decimals());
    }

    // Transfiere monedas enteras desde la cuenta que llama.
    function transferTokens(
        address recipient,
        uint256 wholeTokens
    ) public returns (bool) {
        return transfer(recipient, wholeTokens * 10 ** decimals());
    }

    // Permite destruir únicamente monedas propias.
    function burn(uint256 wholeTokens) public {
        _burn(msg.sender, wholeTokens * 10 ** decimals());
    }
}