USE UniversityPortalDB

DROP TABLE IF EXISTS Returns

CREATE TABLE Library.Returns (
    ReturnID INT PRIMARY KEY IDENTITY(1,1),
    BorrowID INT FOREIGN KEY REFERENCES Library.Borrowing(BorrowID),
    ReturnDate DATE NOT NULL,
    IsLate BIT,
    DaysLate INT
);