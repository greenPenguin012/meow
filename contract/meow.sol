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