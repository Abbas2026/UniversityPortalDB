USE UniversityPortalDB

DROP TABLE IF EXISTS Authors

CREATE TABLE Library.Authors (
    AuthorID INT PRIMARY KEY IDENTITY(1,1),
    FullName NVARCHAR(100) NOT NULL
);