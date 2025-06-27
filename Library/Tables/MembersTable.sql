USE UniversityPortalDB

DROP TABLE IF EXISTS Library.Members

CREATE TABLE Library.Members (
    MemberID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT NOT NULL FOREIGN KEY REFERENCES Students(StudentID),
    FullName NVARCHAR(100) NOT NULL,
    RegisterDate DATE DEFAULT GETDATE(),
    IsActive BIT DEFAULT 1
);


