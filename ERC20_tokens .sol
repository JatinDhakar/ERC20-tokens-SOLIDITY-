// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract Mytoken is ERC20 {
    address owner;
    constructor() ERC20("Juicy Donut", "JD") 
    {
        owner = msg.sender;
        _mint(owner , 10000);
    }

        function mintToken(address to , uint amount) public
        {
            require(msg.sender == owner , "Only owner can mint.");
            uint bal = balanceOf(owner);
            assert(amount < bal);
            _transfer(owner , to , amount);
        }

        function burnToken(address Of , uint amount ) public 
        {
            _burn(Of , amount);
        }

        function TransferToken(address to , uint amount) public 
        {
            require(balanceOf(msg.sender) >= amount , "transaction failed");
            _transfer(msg.sender , to , amount);
        }

}
