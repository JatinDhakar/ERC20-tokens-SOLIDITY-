# ERC20-tokens-SOLIDITY-

This solidity program explains the implementation of ERC20 tokens in solidity. 

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a multiple function which allows a user to mint or burn tokens. Through this soliidty program , anyone will be able to understand the basic implementation and uses of ERC tokes and also their working.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ERC20_tokens.sol). Copy and paste the following code into the file:

```solidity

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
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.13" (or another compatible version), and then click on the "Compile ERC20_tokens.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Mytoken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the multiple functions like burnToken and mintToken. Click on the "Mytoken" contract in the left-hand sidebar, and then click on the "mintToken" function, which will aloow thw owner to send a specific amount of token to the specific address and another function is "burnToken" function, which will aloow any address to burn their tokens. when this contratc is deployed, the currect account address will become the owner of the contract and will have 10000 amount of tokens(JD) and thus will only be allowed to mint the tokens by using the 'mintToken" function. And thus you can interact with multiple accounts and share them your tokens.

## Authors

Jatin Dhakar


## License

This project is licensed under the MIT License
