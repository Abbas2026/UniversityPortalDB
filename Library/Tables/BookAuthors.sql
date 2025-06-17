USE UniversityPortalDB

DROP TABLE IF EXISTS Library.BookAuthors

CREATE TABLE Library.BookAuthors (
    BookID INT FOREIGN KEY REFERENCES Library.Books(BookID),
    AuthorID INT FOREIGN KEY REFERENCES Library.Authors(AuthorID),
    PRIMARY KEY (BookID, AuthorID)
);