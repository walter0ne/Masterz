// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GameLottery is ERC1155, Ownable {

    string public name = "Lottery Game";
    
    uint256 public constant Home = 1;
    uint256 public constant MattoniBase = 2;
    uint256 public constant MattoniPro = 3;
    uint256 public constant Ticket = 4;


    constructor(address initialOwner) ERC1155("https://black-lazy-mongoose-285.mypinata.cloud/ipfs/QmdaHkFP4c6mE1NK28c1Lf5B9Wcpmoc6p3acGKf6uhTqmv/{id}.json") Ownable(initialOwner) {
        mint(msg.sender, Home, 1, "");
        mint(msg.sender, Ticket, 50, "");
        mint(msg.sender, MattoniBase, 100, "");
        mint(msg.sender, MattoniPro, 25, "");
    }


    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }

    function mint(address account, uint256 id, uint256 amount, bytes memory data)
        public
        onlyOwner
    {
        _mint(account, id, amount, data);
    }

    function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data)
        public
        onlyOwner
    {
        _mintBatch(to, ids, amounts, data);
    }
}