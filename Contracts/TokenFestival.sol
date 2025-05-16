// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Burnable.sol";
import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Supply.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TokenFestival is ERC1155, ERC1155Burnable, ERC1155Supply, Ownable {
    uint256 public constant ENTRADA_GENERAL = 0;
    uint256 public constant ENTRADA_VIP = 1;
    uint256 public constant ENTRADA_BACKSTAGE = 2;
    uint256 public constant ENTRADA_INVITADO = 3;

    constructor() ERC1155("https://raw.githubusercontent.com/RodrigoIbanezUFV/BlockchainFinal/main/metadata/{id    function _beforeTokenTransfer(
        address operator,
        address from,
        address to,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory data
    ) internal override(ERC1155, ERC1155Supply) {
        super._beforeTokenTransfer(operator, from, to, ids, amounts, data);
    }
}.json") {
        _mint(msg.sender, ENTRADA_GENERAL, 1, "");
        _mint(msg.sender, ENTRADA_VIP, 1, "");
        _mint(msg.sender, ENTRADA_BACKSTAGE, 1, "");
        _mint(msg.sender, ENTRADA_INVITADO, 1, "");
    }
}
