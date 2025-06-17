USE UniversityPortalDB

DROP TABLE IF EXISTS Library.Borrowing


CREATE TABLE Library.Borrowing (
    BorrowID INT PRIMARY KEY IDENTITY(1,1),
    MemberID INT FOREIGN KEY REFERENCES Library.Members(MemberID),
    CopyID INT FOREIGN KEY REFERENCES Library.BookCopies(CopyID),
    BorrowDate DATE NOT NULL DEFAULT GETDATE(),
    DueDate DATE NOT NULL,
	IsReturnd INT DEFAULT 0
);