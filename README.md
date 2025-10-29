Decentralized Library Smart Contract

This project is a simple Solidity smart contract that represents a decentralized library system where users can add, borrow, and return books on the blockchain.

It is created as a beginner-friendly project to explore how decentralized applications can manage shared digital resources using smart contracts.

Features

Add new books to the library

Borrow books if they are available

Track borrower address on the blockchain

Return books with access control

View total books in the library

Smart Contract Summary

The smart contract uses a “Book” structure that stores:

Book title

Author name

Borrow status (available or not)

Address of the borrower

Main functions:

addBook() → Add a new book

borrowBook() → Borrow a book by ID

returnBook() → Return a borrowed book

getTotalBooks() → Show total number of books

Tools Used

Solidity (Ethereum smart contracts)

Remix IDE for deployment

Any EVM-compatible blockchain network

How to Run

Go to Remix: https://remix.ethereum.org

Create a new file named DecentralizedLibrary.sol

Paste the smart contract code

Compile using Solidity version 0.8.x

Deploy using JavaScript VM or a test network

Future Improvements

Token rewards for sharing or lending books

Borrowing duration, due dates, and fines

IPFS storage for digital books

NFT-based book ownership

Advanced search or category filters

Admin and verification roles

License

This project is licensed under the MIT License.
