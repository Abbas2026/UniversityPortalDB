USE UniversityPortalDB

DROP TABLE IF EXISTS BookCopies

CREATE TABLE Library.BookCopies (
    CopyID INT PRIMARY KEY IDENTITY(1,1),
    BookID INT FOREIGN KEY REFERENCES Library.Books(BookID),
    Barcode NVARCHAR(50) UNIQUE NOT NULL,
    IsAvailable BIT DEFAULT 1
);