USE UniversityPortalDB

DROP TABLE IF EXISTS Fines

CREATE TABLE Library.Fines (
    FineID INT PRIMARY KEY IDENTITY(1,1),
    MemberID INT FOREIGN KEY REFERENCES Library.Members(MemberID),
    Amount DECIMAL(10,2),
    Paid BIT DEFAULT 0,
    Description NVARCHAR(200),
    IssuedDate DATE DEFAULT GETDATE()
);