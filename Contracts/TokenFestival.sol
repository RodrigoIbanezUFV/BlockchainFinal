// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v5.0.1/contracts/token/ERC1155/ERC1155.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v5.0.1/contracts/token/ERC1155/extensions/ERC1155Burnable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v5.0.1/contracts/token/ERC1155/extensions/ERC1155Supply.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v5.0.1/contracts/access/Ownable.sol";

contract TokenFestival is ERC1155,Ownable {
    uint256 public constant ENTRADA_GENERAL = 0;
    uint256 public constant ENTRADA_VIP = 1;
    uint256 public constant ENTRADA_BACKSTAGE = 2;
    uint256 public constant ENTRADA_INVITADO = 3;

    constructor() 
        ERC1155("https://raw.githubusercontent.com/RodrigoIbanezUFV/BlockchainFinal/master/metadata/{id}.json")
        Ownable(msg.sender)
    {
        _mint(msg.sender, ENTRADA_GENERAL, 1, "");
        _mint(msg.sender, ENTRADA_VIP, 1, "");
        _mint(msg.sender, ENTRADA_BACKSTAGE, 1, "");
        _mint(msg.sender, ENTRADA_INVITADO, 1, "");
    }

    function _update(
    address from,
    address to,
    uint256[] memory ids,
    uint256[] memory values // Removed data here
) internal override {
    super._update(from, to, ids, values);
}

    function burn(uint256 id) public onlyOwner {
   _burn(msg.sender, id, 1); // Corrected syntax with three arguments (msg.sender, id, and 1)
    }
}