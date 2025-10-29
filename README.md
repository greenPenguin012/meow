Decentralized Library Smart Contract

Project Description:
This is a beginner-friendly Solidity smart contract that creates a decentralized library system on the blockchain. Users can add books, borrow them, and return them — without needing a central authority. The blockchain keeps everything transparent and secure.

What it does:

Allows users to add new books with title and author

Lets users borrow available books

Prevents borrowing a book that is already borrowed

Ensures only the borrower can return the book

Stores data publicly on the blockchain

Tracks how many books are in the library

Features:

Simple and beginner-friendly smart contract logic

Fully decentralized functionality

Borrowing and returning is verified by wallet addresses

Viewable data for transparency and trust

Deployed Smart Contract Link:
https://celo-sepolia.blockscout.com/address/0x97C62ba8FA3b0Ce758b3bE14723A7070C0B64ADe?tab=contract

Smart Contract Code:
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DecentralizedLibrary {

    struct Book {
        string title;
        string author;
        bool isBorrowed;
        address borrowedBy;
    }

    Book[] public books;

    // Add a book to the library
    function addBook(string memory _title, string memory _author) public {
        books.push(Book(_title, _author, false, address(0)));
    }

    // Borrow a book by its index
    function borrowBook(uint _bookId) public {
        require(_bookId < books.length, "Book does not exist");
        require(!books[_bookId].isBorrowed, "Book already borrowed");

        books[_bookId].isBorrowed = true;
        books[_bookId].borrowedBy = msg.sender;
    }

    // Return a borrowed book
    function returnBook(uint _bookId) public {
        require(_bookId < books.length, "Book does not exist");
        require(books[_bookId].isBorrowed, "Book is not borrowed");
        require(books[_bookId].borrowedBy == msg.sender, "You did not borrow this book");

        books[_bookId].isBorrowed = false;
        books[_bookId].borrowedBy = address(0);
    }

    // Get book count
    function getTotalBooks() public view returns (uint) {
        return books.length;
    }
}


Technologies Used:

Solidity (Ethereum Smart Contracts)

Remix IDE for deployment/testing

Any EVM compatible blockchain network

How to Run:

Open Remix: https://remix.ethereum.org

Create a new file named DecentralizedLibrary.sol

Paste the smart contract code

Compile using Solidity version 0.8.x

Deploy using JavaScript VM or a test network with MetaMask

Future Improvements:

Token rewards for contributors

Deadlines and fines for late returns

NFT-based book identity and ownership

IPFS support for digital books

More detailed book metadata and search features

Admin/verification system for book submissions

License:
MIT License
